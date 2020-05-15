<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	height: 100%;
	width: 100%;
	background-image:
		url('https://images.unsplash.com/photo-1517817748493-49ec54a32465?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
	position: absolute;
}

.form-box {
	width: 380px;
	height: 480px;
	position: relative;
	margin: 6% auto;
	background: #fff;
	padding: 5px;
	border-radius: 15px 15px 30px 30px;
}

.button-box {
	width: 220px;
	margin: 35px auto;
	position: relative;
	box-shadow: 0 0 20px 9px #ff61241f;
	border-radius: 500px;
}

.toggle-btn {
	padding: 20px 30px;
	cursor: pointer;
	background: transparent;
	border: 50 px;
	outline: none;
	position: relative;
}

#btn {
	top: 0;
	left: 0;
	position: absolute;
	width: 110px;
	height: 110%;
	background: linear-gradient(to right, #ff105f, #ffad06);
	background: linear-gradient(to left, #ff105f, #ffad06);
	border-radius: 30px;
	transition: 0.5s;
}

.social-icons {
	margin: 0.1px;
	text-align: center;
}

.social-icons img {
	margin: 0 12px;
	width: 24px;
	height: 24px;
	box-shadow: 0 0 20px 0 #7f7f7f3d;
	cursor: pointer;
	border-radius: 50%;
}
.pj img {

    margin: 20px 20px;
	width: 300px;
	height: 300px;
	box-shadow: 0 0 20px 0 #7f7f7f3d;
	cursor: pointer;
	border-radius: 50%;
}
</style>
</head>
<body>
  
	<div class="form-box">
		<div class="button-box">
		
			<div id="btn"></div>
			<a href="login" style="text-decoration: none;" class="toggle-btn">Login</a> 
			<a href="register" style="text-decoration: none;"class="toggle-btn">Register</a>
		</div>
		<div class="social-icons">
			<img
				src="data:image/png;base64,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">
			<img
				src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAllBMVEX/pQD/////oQD/owD/oAD/0qD//fb/rCn/68v/pgD/5Ln//fj/0IP/3KH/5LT/7c7/16P/3Kr/5b7/qw3/+e7/05P/9uT/ryf/zov/8tv/szL/u07/t0D/v1v/zX7/893/yHP/rB3/xm//mgD/uEf/1Zr/wXX/w2X/vlb/5Lz/8dX/vWP/2qf/sTj/v1P/tS7/w17/3LD9dnTSAAAONklEQVR4nO2daYOiuhKGY5JhRFxaRRRXsOVq2/a5M///z13ALZUEhSQocO77ZcaNzkNClkpVBbUKaPQr0eD6cvNLpg+ZhjL1O6L6nZFMbYkGVq5CoyKEa4ox/uxdX3aSlxqimiKHyNcn9E6H4PaiixFC+E5I0HtFMP6ZPIN8SGh97OKLTJ2qEqIUch55yoT9z5iBhLf2XkFClEDSw0AO8JyQJhcYu9UmjIXxKpMxD+GtEVSWMC4VWR2bTZjUY9eRQcgIN5DQvvVWlSZEiP608xH2/uEIb9VfcUJEiKQaRcKIrupKiAhduDyPQNiluL6EcenmGw6IJwwoInUmRDjk+lSOcB0zcYTIvg01dSCMa2T0gDBIK63ehDEiGP0BYTclqjthPIKzzyJL2MPnLxxqThh3N8zSkSFs43OJyaLuhAgf7uPindAbXwpcWUKSSLKSTt+HX6VdkdBZ4OuFKkkYM4yny8VqHwTBer3uzmazbvzvOtjuV4vl1IaMhLQFwgjfPq0iIRlHvmtJp9ZJ9VhuP4SIP9fvXgk36PaFKhKS6cN1fEoAEW/t9Ep4a6PVJMSdZ4BxT8n95AgIR/T+UQUJiZ3VPln9A9vpgSV0lsyHZHe9XHUI/5sD8DqeX4XbDGGH/YwsK0eI/+Qh7HCEK4Zwx5a1ioTrPIRtrjznJzElbAP4KhJO8hAOeMLVjXBbecKPPIQ+/zPqXQgt2H6rSHhSIkyrPiEcUvB+FQmHSoRkfiFcwJI2hxBhPyV0uYKS2+qqOoT9PISeLfwuSgm5YaRJhGSZEm6bS4iIFxM6P81tpYgOY0KPf7dJhPFkCLUGlHu3SYRkFRMOG004dVBrgvl3m0Q4jgm7TSZEOCb8T6MJqRUT8uVsFqGHWt/NJvRlhNPrPmoTCI+IX1k0jbCNoI0mUW0JxdVTTDhCrWUdCBXXh00j5C1RiRLCeR0Ic9lpeGtiIvqFWtM6EOaytfFL+US0UxPCroAjUU9G2EfOuA6Euaz6fySEeFgPQjLOASiSoEzCys3acpn1h5IqzCLcuKmsc8O2R+7l9TolnFiXl8MX7gGTp+PFQFaFKaEtfjC+yIYvL69t7uN8JUyDD87/j/+TelAUQkSB/2iXdDOTAsa9sJSQXMS95F/nhqM4PKx7/ba/SeT77U6vu12ME9D8mNieH7br2aTHxaX0olmwmtsZV8ogNKe46uzFrOPKbr/jjqJ9SPJDXp1pQFjJ1aMm4zflEiaxGtvOYycKaxAtUIGaLKqEsKxrE4z+dASPXZn8yZyWxZgQyvpYfRE8njx1gbk32P6ypHrEv8ohJHjZz+Mfwqi9KIWxHEJC58OCfIlGyxLaaimE2D7liwzk5Zxs84WJCXmjvqYI3ubqXqSy1sXmAc9lnhDPZXEr+eUvzDZV04SEBmoNlFFktBoNExKSw4XwqY6hwafRLCF+4gTqWJbrea6V6Qh7/d7eYJlMEtJVdgt1/eH6MLXTWSW2w9121tk8aM8zY7VokpDOssq7Ga5Cdnp8dkgn09VHZpRyZKpUCeEnMaIsk6Z1mmesBePfkDBrahdRQ8WKCe3fJjSVDxLHPX7Y+8drx91I+ssoNFKu8AO1LCOSdh7tFX7+QBG6k/bAZsplOYVyKhSTt8/Bd67Iubwejag0QmeSk+9cjyv1qd4TlUXoL4v1hvF0vaSSlER4QkWnXuTRcKqjcggDlekznubIVFJcqOV6g1FnODz1etGE1YzT7YOoFyvNL/PVbvue+ABZC3kLvY9SGdUomdYeO53kT53SPyqTNN0Nk8/GRc6cscop5Jb5FOzt3lzSxcSTGDTdrb6/V4vdfJyYBSWYhAoP4+nzSfGe5LD5bEt21wqJ2PzTIwFMUqzMRu71m5brDoazncRSSsStUGEDt5hoGzl6hLTHlcidCj5WeNyVPWFWR4QkwvVGepPwhFBu78+pu9f7FZBf3BH8k22W8gPEA1B+frvXQtQn5CYj1pIrDx5/PFwN+nuu3yGEyzTjaxnldQnvCSbkN5zg4OlcpTPmfjPlfrLWqURtQi5DwwQOEzjMM9+0/sCnEe/g565OJWoS8lUII8QQPuScbEZwBsSvpQUf3wLSJYSLQgdG4uJ1bsP3CFYThstinUrUI7yH054FAzfyxQxeBLeo+QtrPIkJofoNwvApg200nwtMBiJnEtHoTrUIyQ+czgAnR7wtBBjfH7YcTI64VOpjohYh5wHSYftRvCi8+dRnKWgEr/0WQmLDfEXs7I/JYpdfbJfJhadboWo1aBHCoaLPRvTzU518YrIe8JWo3NfoEHITSDY+rFA3epfP9DYkBB8JoUuvICSgIR7ZJhYqmpXYdgo7auUxTYPwnokoVcAWLpdHr0zMs4z3mdd/ESFcyLFdAZmqArL9KddZdRSbqU4dgkXtyEgVwkoEl/EUm6k6IZmDMTlgb76CH8ZVEXMd2EyFsJDSCcFYwXYEOHOXLYfc+4W4O6U4XqgTwmnngO1J+cSFhbRnbhV4DhSnNeqE0O7HNq4fjUbaav29Xwk66LdlpSiTEA5XB0ONNIldujdT8CBs1LoajecQELKPoZ4/DTM3gu7r1u9XEwIQppHa+T0SpWKW0Zh9X0gbUDYhYgk99jHUA2Q97oExwxHis15JyExKuclccTGWAtDgHSGK8JWEbKnUlhV3+fdr0S/2A7Uh3xAhk+0NRy09uQzhX/aDf95J+MXUocak9CzmWmDMfWsdfmW1LE1C0B7eS3hvpUYJganrvc8hU6q/LT1ZlazDQVapFORl3a239jRMD4+Dlp6Yu0XBzPCtdcj08PyWQ2F9VXLEb7FGGk2/H8beBhaIL5+1wZk3a+jUdPthF2Ls+y+fecP14R+mWHqdqXNfJEGjsPvq1RMc9ybGuho/y2KquMOmUYfAXMoYUfiNsYKaZA08soQJ5RICSxSbehFrzWqYHhNaC6SR2mUScjtPy6zGVVBMI323NZHzemECJAjRcPdlEo/BXWTF4VBnPIRtyGebabEdfFYWUxjY2j3V7RUNQsjBNFMNY1SXNWmBpiBkBiyfMM1gexfY+lO1ZLCOM9zjrOqroLUHDDy+PHYX31ac14BNSODAZymXUoOQa6asu9A9b30hsUNekj2W0egtu9xzgOEDZxMV077FugNT6PKtugWs6TEE7ffs+k1wEs0j9lHjEtK4yq5peh5D0O2J9VVQcVbosY2Aq0LFCQ3S9NxjDkZMBVoSmRdE7LO+wvw6+qBaRk3fRM4mAwdlvCw0A4f+l7AjlSZiewkhv56HgZ+4SIfagYCc2x+fj/tlhEIoApw7Fojy6QE/aN7XwVMvoS4hmfJFAdci43zB61bAOXpzm6zKQwUy4MnO7VKcuFMWSDfHwzjgYlAoF2e00SigNuHTyAE8frZT4265gItnEQ7FpB1RIuRRW3DFIXT5aGPfnfHpTIQ+WNF8cZF+zAy/UrKEuC6Cl8OMtnoMhBRdgu+top30Km1CsU25stC1MBgJQ8cmkkSvicsSzdwD+oT8/EoWvJaG55FDNHKdlNNxjsN1KItAxCG/ePY0M50YIBRdut2d7LanienG4fKwm49RRio6LE719NqoEUKxnbacbVbLehgkiyTHFWunADFByDudJ5ooRDoTKlqw9PrRtHAmCGWOXoNx0ZuPkWhJVjWwMTJDKDOuuftC1UjwSryGZgBvKjOEvMPwWaMwNyPB0hmsXnzsWfqRzmfJg4AmWSk3oQi2JYe+x2smE1l4qHa0+kVih5o21Wj6lDHmm0nNAWsjaYaMESIq34+x/h4eJijFdD6RmzvMABokRHifsaR3P5bSnLrJFIDs2xm/CgwlijJIGC8KMm1P7mi2G6Pb8ctpKlk0Xk4yTY7Oylh+LoOECE8feelbfnvY3e6/D4vV9zaI2v4DW5z3YyybmVHCeFw0kXIvnskUni5kyyxh3C/qOeqfNTGZONEwYXzBpVY8SSxPujJRL5BpwrilRloRJSeDLTSRecLEaKEeceEbTyZcAmGahVZtm9s1noHW3LyUE0br4oyi2c2EkvOe1DziHisrrVC2NrOwlGzXyZldupYQuQhGK9G+lqXBNt8ypLjKI0SJWSLsHnNAbiZzWlpm/VIJk4oky+7o0VapM5gsyqq+VCUTohRyuo/akuMfHPc4DH5QwZM8iiohVAwhzq/EHGxPF9v1untJ39ddr7eruU2KHOChqJcQJiLX0zduyjabGtXLCN8mumk8ofd/wrpLetJqo/QvIHQbT+hITjxulKjs1OpGSXoud6PUfEJkIb0EqFUXseM67DaacBwT6uQ/rbxSQtkZs40RmceEqpnQaiGya6HWsdGE3zGh9+5SlCk8iwkVg6TrITpKzrfQcaOuuBJfJiRk4W6S4o4mPaPEgFdURZU4aSeEzZ23JVnxE0LlFLZVV5pJNT1JRznTcsWVer6mhE2dmqZx8ymhAU/VKuocIHY+78nciYpV0vn0jTNhIyvxEu9+ObOriQPGJRb5Qug1j/Aapnk9d23StDGRIBcSagZQVU+3+Nbb2XnHwuf5VVr4Fg1+Px2wUSMGEwN3J3T447bqLNxviYTKqesrKMrkj2HPsGw3ZdzHB0dO2Oq8xgOkbMFQYngOaa98F57yhXfAz4w7aXVSf0TKnfbGnyU7rHtDpXzsjnBabrvWPSoRs3CJ5wFvJLHYdREhYsSu5MRjN6jrw4hDSZiA9EznEX9cai1E6FbmrCs/tdpZk7oxEjyVx3lkncs9yHu4fTVEaNjLSL6RffL4cf8CF14zInQcZXqTPzpb3QvK9sI2IYIfnan87PR4d7iwy4sUMKAY7/f6+JDhMWFSkX+3YdGD118lShYT/1lEx1PCRP7pVyX1lScl3P8ApLgAighSX0kAAAAASUVORK5CYII=">
			<img
       			src="data:image/png;base64,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">
		   
		  <div class="pj">
		    <img
		        src="https://wpeverest.com/blog/wp-content/uploads/2019/09/User-Registration-1.7.0-New-Field-Icons-Multi-Part-and-Style-Customizer-Add-ons.png">
		 </div>
		  </div>
	</div>



	<table align="center">
		<tr>
			<%--<td><a href="login">Login</a>
                </td>
                <td><a href="register">Register</a>
                </td>--%>
		</tr>
	</table>
</body>
</html>