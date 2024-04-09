class WinnerMailer < ApplicationMailer
    def winner_email(email)
      mail(to: email, subject: 'Congratulations! You have won the treasure hunt.')
    end
  end
  