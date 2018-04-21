namespace :al do

  require "faker"
  require 'digest/sha1'
  require 'factory_girl'


  desc "Cleans p DB - DELETES everything -  watch out"
  task :emptyDB => :environment do
    User.delete_all
    Company.delete_all
    Delayed::Job.delete_all
    FitnessTest.delete_all
    Goal.delete_all
    MedicalHistory.delete_all
    Schedule.delete_all
    Target.delete_all
    StressTest.delete_all
    FoodLog.delete_all
    CardioProfile.delete_all
    Workout.delete_all
    PaperTrail::Version.delete_all
  end



  desc "generates fake Companies for testing"
  task :generateFakeCompanies => :environment do


    begin

      (1..5).each do | i |
        h = FactoryGirl.build(:company)
        h.save
        #puts u.to_xml(:include => :care_home_industry_mappings)
        puts "Company #{h.id}"
      end

    rescue Exception => exception
      puts exception.backtrace.join("\n")
      raise exception
    end

  end



  desc "generates fake users for testing"
  task :generateFakeUsers => :environment do

    begin

      companies = Company.all

      i = 1
      companies.each do |c|
        count = 1
        (0..1).each do |j|
          u = FactoryGirl.build(:user)
          u.email = "admin#{i}@gmail.com"
          u.password = "admin#{i}@gmail.com"
          u.role = "Company Admin"
          u.company_id = c.id
          u.save
          #puts u.to_xml
          puts "User #{u.id}"
          i = i + 1
        end
        
        (0..1).each do |j|
          u = FactoryGirl.build(:user)
          u.email = "runner#{i}.#{c.id}@gmail.com"
          u.password = "runner#{i}.#{c.id}@gmail.com"
          u.role = "Runner"
          u.company_id = c.id
          u.save
          #puts u.to_xml
          puts "User #{u.id}"
          i = i + 1
        end

      end

      i = 1
      # Now generate some coaches
      (1..10).each do |j|
        u = FactoryGirl.build(:user)                
        u.email = "coach#{i}@gmail.com"
        u.password = "coach#{i}@gmail.com"
        u.role = "Coach"
        u.save
        #puts u.to_xml
        puts "User #{u.id}"
        i = i + 1
      end


      u = FactoryGirl.build(:user)
      u.email = "runner@gmail.com"
      u.password = u.email
      u.first_name="Runner"
      u.last_name="Test"
      # Ensure User role is USER_ROLE_ID
      u.role = "Runner"
      u.save
      #puts u.to_xml
      puts "User #{u.id}"

      u = FactoryGirl.build(:user)
      u.email = "root@ubernurse.com"
      u.password = u.email
      u.role = "Super User"
      u.save
      #puts u.to_xml
      puts "User #{u.id}"


    rescue Exception => exception
      puts exception.backtrace.join("\n")
      raise exception
    end

  end

  desc "generates fake targets for testing"
  task :generateFakeTargets => :environment do

    begin
      coaches = User.coaches

      User.runners.each do |r|
        t = FactoryGirl.build(:target)
        t.user_id = r.id
        t.save!

        g = FactoryGirl.build(:goal)
        g.user_id = r.id
        g.save!
        
        ft = FactoryGirl.build(:fitness_test)
        ft.user_id = r.id
        ft.coach_id = coaches.sample.id
        ft.save!

        (4..15).each do |speed|
          c = FactoryGirl.build(:cardio_profile)          
          c.user_id = r.id
          c.fitness_test_id = ft.id
          c.speed = speed.to_f
          c.bpm = 110 + speed
          c.on_date = ft.created_at
          c.save
        end

        m = FactoryGirl.build(:medical_history)
        m.user_id = r.id
        m.save!

        st = FactoryGirl.build(:stress_test)
        st.user_id = r.id
        st.save!

        Workout::WORKOUT_TYPES.each do |wt|
          w = FactoryGirl.build(:workout)
          w.workout_type = wt
          w.user_id = r.id
          w.fitness_test_id = ft.id
          w.save!
        end

        (1..3).each do |i|
          fl = FactoryGirl.build(:food_log)
          fl.user_id = r.id
          fl.save!
        end
      end


    rescue Exception => exception
      puts exception.backtrace.join("\n")
      raise exception
    end

  end

  task :finalize => :environment do
    Delayed::Job.delete_all
    #ShiftCreatorJob.add_to_queue
  end

  desc "Generating all Fake Data"
  task :generateFakeAll => [:emptyDB, :generateFakeCompanies, :generateFakeUsers,
  :generateFakeTargets, :finalize] do
    puts "Generating all Fake Data"
  end



end
