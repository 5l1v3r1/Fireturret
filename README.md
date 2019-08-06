<p align="center">
	<b>Fireturret</b>
	<br>
	<i>Simple RAT for Windows OS with password protected SSH tunelling.</i>
	<br><br><br>
	<img alt="Sreenshot_1" src="https://user-images.githubusercontent.com/48186982/62452322-354d7680-b770-11e9-8f86-e63ada45ef6c.png">
</p>

# Installation & Usage
1. Download **Fireturret**
2. Run **fireturret.bat** by double-clicking
3. Open generated URL
4. Log in with credentials

# Credentials
**File:** *fireturret/index.php*
```php
24. // Disable login (don't ask for credentials, be careful)
25. // Example: $NO_LOGIN = true;
26. $NO_LOGIN = false;
27. 
28. // Single-user credentials
29. // Example: $USER = 'user'; $PASSWORD = 'password';
30. $USER = 'fireturret';
31. $PASSWORD = 'fireturret1337';
```

# Logs
When somebody connects via web browser it dumps their **IP address** and **User-Agent** into **logs.txt** file.

# How it works?
It starts a PHP server with [web-based SSH](http://web-console.org) and through SSH tunelling it's exposing local server via [serveo.net](https://serveo.net).
