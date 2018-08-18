Configuration Test
{
   Import-DscResource -module PSDesiredStateConfiguration 
   node ("192.168.21.105")

   {
        Service stopbits

        {
            name='bits'
            state = 'Stopped'
            Ensure = 'Present'

        }
   }
}