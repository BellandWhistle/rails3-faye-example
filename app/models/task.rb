class Task < ActiveRecord::Base
  
  STATES = ['initial', 'in-progress', 'verify', 'done']
  
  belongs_to :project
  scope :initial, where(:state => 'initial')
  scope :in_progress, where(:state => 'in-progress')
  scope :done, where(:state => 'done')
  scope :verify, where(:state => 'verify')
  
end
