# PTSpam - Random Data Redirection to Other Pseudo-Terminals

Idea care of John Hammond

This Bash script redirects random data from `/dev/urandom` to all pseudo-terminals (PTS) except the one associated with the user executing the script.

## Usage

1. Ensure you have the necessary permissions to access `/dev/pts`.
2. Run the script using Bash:

   ```bash
   bash PTSpam.sh
   
   bash PTSpam.sh -stop
```


[![YouTube link](http://img.youtube.com/vi/-j81Bqz8NwQ/0.jpg)](http://www.youtube.com/watch?v=-j81Bqz8NwQ "Video Tutorial")
