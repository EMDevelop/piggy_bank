require 'piggy_bank'

describe 'PiggyBank' do

  context 'User Story 1' do
    it 'Should be able to receive coins' do
        piggy_bank = PiggyBank.new
        expect(piggy_bank).to respond_to(:add).with(1).argument
    end

    it 'Should store coins when they are added' do
        piggy_bank = PiggyBank.new
        piggy_bank.add('50p')
        expect(piggy_bank.coins).to include('50p')
    end

    it 'Should store multiple coins' do
        piggy_bank = PiggyBank.new
        piggy_bank.add('50p')
        piggy_bank.add('20p')
        expect(piggy_bank.coins).to include('50p')
        expect(piggy_bank.coins).to include('20p')
    end
  end

  context 'User Story 2' do

    
    it 'Check whether a piggy bank can shake' do
      #Arrange
      piggy_bank = PiggyBank.new
      #Act
        #skipped
      #Assert
      expect(piggy_bank).to respond_to(:shake)
    end

    # Test what happens if the piggy bank does have coins
    it 'will cling if there is money' do
      piggy_bank = PiggyBank.new()
      piggy_bank.add("50p")

      
      expect do 
        piggy_bank.shake
      end.to output("cling\n").to_stdout
    end
    
  
  end

end