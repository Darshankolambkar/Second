Configuration Test
{
   Import-DscResource -module PSDesiredStateConfiguration 
   node @("win105.ntms.local", "localhost")

   {
        Service stopbits

        {
            Ensure = "Present"
            name="BITS"
            state = "running"
            

        }
   }
}