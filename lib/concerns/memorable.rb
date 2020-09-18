module Memorable
    #In the original classes these were called self.method
    #But since these are Class Method modules
    #The 'self' part is not required

    def reset_all
        self.all.clear
        #Resets/Clears all data in the All array
    end
    
    def count
        self.all.count
        #Counts the All array
    end 

end 