# These test data are actual samples of stuff we support

WUNDERGROUND_XML_INSTANCE =
<<-XML
<response>
	<version>0.1</version>
	<termsofService>http://www.wunderground.com/weather/api/d/terms.html</termsofService>
	<features>
		<feature>forecast</feature>
	</features>
	<forecast>
		<txt_forecast>
		  <date>10:00 AM EST</date>
		  <forecastday>
		    <period>0</period>
		    <icon>snow</icon>
		    <icon_url>http://icons-ak.wxug.com/i/c/k/snow.gif</icon_url>
		    <title>Monday</title>
		    <fcttext><![CDATA[Overcast with snow, then  rain in the afternoon. Fog early. High of 41F. Winds from the South at 5 to 10 mph. Chance of precipitation 90%  with accumulations up to 1 in. possible.]]></fcttext>
		    <fcttext_metric><![CDATA[Overcast with rain. Fog early. High of 5C. Winds from the South at 10 to 15 km/h. Chance of rain 90% with rainfall amounts near 6.1 mm possible.]]></fcttext_metric>
		    <pop>90</pop>
		  </forecastday>
		</txt_forecast>
	</forecast>
</response>
XML

WUNDERGROUND_XML_COLLECTION = 
<<-XML
<response>
	<version>0.1</version>
	<termsofService>http://www.wunderground.com/weather/api/d/terms.html</termsofService>
	<features>
		<feature>forecast</feature>
	</features>
	<forecast>
		<txt_forecast>
		<date>10:00 AM EST</date>
		<forecastdays>
		<forecastday>
		<period>0</period>
		<icon>snow</icon>
		<icon_url>http://icons-ak.wxug.com/i/c/k/snow.gif</icon_url>
		<title>Monday</title>
		<fcttext><![CDATA[Overcast with snow, then  rain in the afternoon. Fog early. High of 41F. Winds from the South at 5 to 10 mph. Chance of precipitation 90%  with accumulations up to 1 in. possible.]]></fcttext>
		<fcttext_metric><![CDATA[Overcast with rain. Fog early. High of 5C. Winds from the South at 10 to 15 km/h. Chance of rain 90% with rainfall amounts near 6.1 mm possible.]]></fcttext_metric>
		<pop>90</pop>
		</forecastday>
		<forecastday>
		<period>1</period>
		<icon>partlycloudy</icon>
		<icon_url>http://icons-ak.wxug.com/i/c/k/partlycloudy.gif</icon_url>
		<title>Monday Night</title>
		<fcttext><![CDATA[Overcast with a chance of rain in the evening, then partly cloudy. Fog overnight. Low of 32F. Winds from the WSW at 5 to 15 mph. Chance of rain 20%.]]></fcttext>
		<fcttext_metric><![CDATA[Overcast with a chance of rain in the evening, then partly cloudy. Fog overnight. Low of 0C. Breezy. Winds from the WSW at 10 to 20 km/h.]]></fcttext_metric>
		<pop>20</pop>
		</forecastday>
		<forecastday>
		<period>2</period>
		<icon>partlycloudy</icon>
		<icon_url>http://icons-ak.wxug.com/i/c/k/partlycloudy.gif</icon_url>
		<title>Tuesday</title>
		<fcttext><![CDATA[Partly cloudy. High of 43F. Breezy. Winds from the West at 15 to 20 mph with gusts to 30 mph.]]></fcttext>
		<fcttext_metric><![CDATA[Partly cloudy. High of 6C. Windy. Winds from the West at 20 to 30 km/h with gusts to 50 km/h.]]></fcttext_metric>
		<pop>10</pop>
		</forecastday>
		<forecastday>
		<period>3</period>
		<icon>partlycloudy</icon>
		<icon_url>http://icons-ak.wxug.com/i/c/k/partlycloudy.gif</icon_url>
		<title>Tuesday Night</title>
		<fcttext><![CDATA[Partly cloudy. Fog overnight. Low of 21F with a windchill as low as 12F. Winds from the West at 5 to 15 mph.]]></fcttext>
		<fcttext_metric><![CDATA[Partly cloudy. Fog overnight. Low of -6C with a windchill as low as -11C. Windy. Winds from the West at 10 to 25 km/h.]]></fcttext_metric>
		<pop>0</pop>
		</forecastday>
		<forecastday>
		<period>4</period>
		<icon>partlycloudy</icon>
		<icon_url>http://icons-ak.wxug.com/i/c/k/partlycloudy.gif</icon_url>
		<title>Wednesday</title>
		<fcttext><![CDATA[Clear. High of 39F with a windchill as low as 19F. Winds from the West at 5 to 10 mph.]]></fcttext>
		<fcttext_metric><![CDATA[Clear. High of 4C with a windchill as low as -7C. Winds from the West at 10 to 15 km/h.]]></fcttext_metric>
		<pop>10</pop>
		</forecastday>
		<forecastday>
		<period>5</period>
		<icon>mostlycloudy</icon>
		<icon_url>http://icons-ak.wxug.com/i/c/k/mostlycloudy.gif</icon_url>
		<title>Wednesday Night</title>
		<fcttext><![CDATA[Overcast. Fog overnight. Low of 14F. Winds from the West at 5 to 10 mph shifting to the NNE after midnight.]]></fcttext>
		<fcttext_metric><![CDATA[Overcast. Fog overnight. Low of -10C. Winds from the West at 5 to 15 km/h shifting to the NNE after midnight.]]></fcttext_metric>
		<pop>10</pop>
		</forecastday>
		<forecastday>
		<period>6</period>
		<icon>chancesnow</icon>
		<icon_url>http://icons-ak.wxug.com/i/c/k/chancesnow.gif</icon_url>
		<title>Thursday</title>
		<fcttext><![CDATA[Clear with a chance of snow and rain showers in the morning, then partly cloudy. High of 39F. Winds from the North at 5 to 15 mph shifting to the West in the afternoon. Chance of snow 40%.]]></fcttext>
		<fcttext_metric><![CDATA[Clear with a chance of rain in the morning, then partly cloudy. High of 4C. Breezy. Winds from the North at 10 to 25 km/h shifting to the West in the afternoon. Chance of rain 40%.]]></fcttext_metric>
		<pop>40</pop>
		</forecastday>
		<forecastday>
		<period>7</period>
		<icon>partlycloudy</icon>
		<icon_url>http://icons-ak.wxug.com/i/c/k/partlycloudy.gif</icon_url>
		<title>Thursday Night</title>
		<fcttext><![CDATA[Partly cloudy. Fog overnight. Low of 23F with a windchill as low as 14F. Winds from the SW at 5 to 10 mph.]]></fcttext>
		<fcttext_metric><![CDATA[Partly cloudy. Fog overnight. Low of -5C with a windchill as low as -10C. Breezy. Winds from the SW at 10 to 20 km/h.]]></fcttext_metric>
		<pop>0</pop>
		</forecastday>
		</forecastdays>
		</txt_forecast>
		<simpleforecast>
		<forecastdays>
		<forecastday>
		<date>
  <epoch>1360638000</epoch>
  <pretty_short>10:00 PM EST</pretty_short>
  <pretty>10:00 PM EST on February 11, 2013</pretty>
  <day>11</day>
  <month>2</month>
  <year>2013</year>
  <yday>41</yday>
  <hour>22</hour>
  <min>00</min>
  <sec>0</sec>
  <isdst>0</isdst>
  <monthname>February</monthname>
  <weekday_short>Mon</weekday_short>
  <weekday>Monday</weekday>
  <ampm>PM</ampm>
  <tz_short>EST</tz_short>
  <tz_long>America/New_York</tz_long>
</date>
					<period>1</period>
					<high>
						<fahrenheit>41</fahrenheit>
						<celsius>5</celsius>
					</high>
					<low>
						<fahrenheit>32</fahrenheit>
						<celsius>0</celsius>
					</low>
					<conditions>Snow</conditions>
					
					<icon>snow</icon>
					<icon_url>http://icons-ak.wxug.com/i/c/k/snow.gif</icon_url>
					<skyicon>cloudy</skyicon>
					<pop>90</pop>
					<qpf_allday>
						<in>0.32</in>
						<mm>8.1</mm>
					</qpf_allday>
					<qpf_day>
						<in>0.24</in>
						<mm>6.1</mm>
					</qpf_day>
					<qpf_night>
						<in>0.08</in>
						<mm>2.0</mm>
					</qpf_night>
					<snow_allday>
						<in>1</in>
						<cm>3</cm>
					</snow_allday>
					<snow_day>
						<in>1</in>
						<cm>3</cm>
					</snow_day>
					<snow_night>
						<in>0</in>
						<cm>0</cm>
					</snow_night>
					<maxwind>
						<mph>9</mph>
						<kph>14</kph>
						<dir>SSE</dir>
						<degrees>149</degrees>
					</maxwind>
					<avewind>
						<mph>8</mph>
						<kph>13</kph>
						<dir>SSW</dir>
						<degrees>198</degrees>
					</avewind>
					<avehumidity>80</avehumidity>
					<maxhumidity>100</maxhumidity>
					<minhumidity>71</minhumidity>
				</forecastday>
				
				<forecastday>
					<date>
  <epoch>1360724400</epoch>
  <pretty_short>10:00 PM EST</pretty_short>
  <pretty>10:00 PM EST on February 12, 2013</pretty>
  <day>12</day>
  <month>2</month>
  <year>2013</year>
  <yday>42</yday>
  <hour>22</hour>
  <min>00</min>
  <sec>0</sec>
  <isdst>0</isdst>
  <monthname>February</monthname>
  <weekday_short>Tue</weekday_short>
  <weekday>Tuesday</weekday>
  <ampm>PM</ampm>
  <tz_short>EST</tz_short>
  <tz_long>America/New_York</tz_long>
</date>
					<period>2</period>
					<high>
						<fahrenheit>43</fahrenheit>
						<celsius>6</celsius>
					</high>
					<low>
						<fahrenheit>21</fahrenheit>
						<celsius>-6</celsius>
					</low>
					<conditions>Partly Cloudy</conditions>
					
					<icon>partlycloudy</icon>
					<icon_url>http://icons-ak.wxug.com/i/c/k/partlycloudy.gif</icon_url>
					<skyicon>partlycloudy</skyicon>
					<pop>10</pop>
					<qpf_allday>
						<in>0.00</in>
						<mm>0.0</mm>
					</qpf_allday>
					<qpf_day>
						<in>0.00</in>
						<mm>0.0</mm>
					</qpf_day>
					<qpf_night>
						<in>0.00</in>
						<mm>0.0</mm>
					</qpf_night>
					<snow_allday>
						<in>0</in>
						<cm>0</cm>
					</snow_allday>
					<snow_day>
						<in>0</in>
						<cm>0</cm>
					</snow_day>
					<snow_night>
						<in>0</in>
						<cm>0</cm>
					</snow_night>
					<maxwind>
						<mph>18</mph>
						<kph>29</kph>
						<dir>West</dir>
						<degrees>280</degrees>
					</maxwind>
					<avewind>
						<mph>14</mph>
						<kph>22</kph>
						<dir>West</dir>
						<degrees>273</degrees>
					</avewind>
					<avehumidity>69</avehumidity>
					<maxhumidity>90</maxhumidity>
					<minhumidity>53</minhumidity>
				</forecastday>
				
				<forecastday>
					<date>
  <epoch>1360810800</epoch>
  <pretty_short>10:00 PM EST</pretty_short>
  <pretty>10:00 PM EST on February 13, 2013</pretty>
  <day>13</day>
  <month>2</month>
  <year>2013</year>
  <yday>43</yday>
  <hour>22</hour>
  <min>00</min>
  <sec>0</sec>
  <isdst>0</isdst>
  <monthname>February</monthname>
  <weekday_short>Wed</weekday_short>
  <weekday>Wednesday</weekday>
  <ampm>PM</ampm>
  <tz_short>EST</tz_short>
  <tz_long>America/New_York</tz_long>
</date>
					<period>3</period>
					<high>
						<fahrenheit>39</fahrenheit>
						<celsius>4</celsius>
					</high>
					<low>
						<fahrenheit>14</fahrenheit>
						<celsius>-10</celsius>
					</low>
					<conditions>Partly Cloudy</conditions>
					
					<icon>partlycloudy</icon>
					<icon_url>http://icons-ak.wxug.com/i/c/k/partlycloudy.gif</icon_url>
					<skyicon>partlycloudy</skyicon>
					<pop>10</pop>
					<qpf_allday>
						<in>0.00</in>
						<mm>0.0</mm>
					</qpf_allday>
					<qpf_day>
						<in>0.00</in>
						<mm>0.0</mm>
					</qpf_day>
					<qpf_night>
						<in>0.09</in>
						<mm>2.3</mm>
					</qpf_night>
					<snow_allday>
						<in>0</in>
						<cm>0</cm>
					</snow_allday>
					<snow_day>
						<in>0</in>
						<cm>0</cm>
					</snow_day>
					<snow_night>
						<in>2</in>
						<cm>4</cm>
					</snow_night>
					<maxwind>
						<mph>9</mph>
						<kph>14</kph>
						<dir>WNW</dir>
						<degrees>289</degrees>
					</maxwind>
					<avewind>
						<mph>6</mph>
						<kph>10</kph>
						<dir>WSW</dir>
						<degrees>250</degrees>
					</avewind>
					<avehumidity>70</avehumidity>
					<maxhumidity>100</maxhumidity>
					<minhumidity>52</minhumidity>
				</forecastday>
				
				<forecastday>
					<date>
  <epoch>1360897200</epoch>
  <pretty_short>10:00 PM EST</pretty_short>
  <pretty>10:00 PM EST on February 14, 2013</pretty>
  <day>14</day>
  <month>2</month>
  <year>2013</year>
  <yday>44</yday>
  <hour>22</hour>
  <min>00</min>
  <sec>0</sec>
  <isdst>0</isdst>
  <monthname>February</monthname>
  <weekday_short>Thu</weekday_short>
  <weekday>Thursday</weekday>
  <ampm>PM</ampm>
  <tz_short>EST</tz_short>
  <tz_long>America/New_York</tz_long>
</date>
					<period>4</period>
					<high>
						<fahrenheit>39</fahrenheit>
						<celsius>4</celsius>
					</high>
					<low>
						<fahrenheit>23</fahrenheit>
						<celsius>-5</celsius>
					</low>
					<conditions>Chance of Snow</conditions>
					
					<icon>chancesnow</icon>
					<icon_url>http://icons-ak.wxug.com/i/c/k/chancesnow.gif</icon_url>
					<skyicon>partlycloudy</skyicon>
					<pop>40</pop>
					<qpf_allday>
						<in>0.11</in>
						<mm>2.8</mm>
					</qpf_allday>
					<qpf_day>
						<in>0.02</in>
						<mm>0.5</mm>
					</qpf_day>
					<qpf_night>
						<in>0.00</in>
						<mm>0.0</mm>
					</qpf_night>
					<snow_allday>
						<in>2</in>
						<cm>5</cm>
					</snow_allday>
					<snow_day>
						<in>0</in>
						<cm>1</cm>
					</snow_day>
					<snow_night>
						<in>0</in>
						<cm>0</cm>
					</snow_night>
					<maxwind>
						<mph>14</mph>
						<kph>22</kph>
						<dir>North</dir>
						<degrees>357</degrees>
					</maxwind>
					<avewind>
						<mph>7</mph>
						<kph>11</kph>
						<dir>SW</dir>
						<degrees>225</degrees>
					</avewind>
					<avehumidity>89</avehumidity>
					<maxhumidity>100</maxhumidity>
					<minhumidity>60</minhumidity>
				</forecastday>
				
			</forecastdays>
		</simpleforecast>
	</forecast>

	
	
	
	
	
	
	
	
    
    


    
    
</response>
XML

WUNDERGROUND_JSON_INSTANCE =
<<-JSON
{
	"response": {
		"version": "0.1"
		,"termsofService": "http://www.wunderground.com/weather/api/d/terms.html"
		,"features": {
		"forecast": 1
		}
	}
		,
	"forecast":{
		"txt_forecast": {
		"period":0,
		"icon":"partlycloudy",
		"icon_url":"http://icons-ak.wxug.com/i/c/k/partlycloudy.gif",
		"title":"Thursday",
		"fcttext":"Partly cloudy. High of 28F. Winds from the NNW at 5 to 10 mph.",
		"fcttext_metric":"Partly cloudy. High of -2C. Winds from the NNW at 5 to 15 km/h.",
		"pop":"0"
	  }
  }
}
JSON

WUNDERGROUND_JSON_COLLECTION =
<<-JSON
{
	"response": {
		"version": "0.1"
		,"termsofService": "http://www.wunderground.com/weather/api/d/terms.html"
		,"features": {
		"forecast": 1
		}
	}
		,
	"forecast":{
		"txt_forecast": [
		{
		"period":0,
		"icon":"partlycloudy",
		"icon_url":"http://icons-ak.wxug.com/i/c/k/partlycloudy.gif",
		"title":"Thursday",
		"fcttext":"Partly cloudy. High of 28F. Winds from the NNW at 5 to 10 mph.",
		"fcttext_metric":"Partly cloudy. High of -2C. Winds from the NNW at 5 to 15 km/h.",
		"pop":"0"
		}
		,
		{
		"period":1,
		"icon":"chancesnow",
		"icon_url":"http://icons-ak.wxug.com/i/c/k/chancesnow.gif",
		"title":"Thursday Night",
		"fcttext":"Partly cloudy in the evening, then overcast with a chance of snow. Low of 19F. Winds less than 5 mph. Chance of snow 30%.",
		"fcttext_metric":"Partly cloudy in the evening, then overcast with a chance of snow. Low of -7C. Winds less than 5 km/h. Chance of snow 30%.",
		"pop":"30"
		}
		,
		{
		"period":2,
		"icon":"snow",
		"icon_url":"http://icons-ak.wxug.com/i/c/k/snow.gif",
		"title":"Friday",
		"fcttext":"Overcast with snow. High of 37F with a windchill as low as 18F. Winds from the ENE at 10 to 15 mph. Chance of snow 100%.",
		"fcttext_metric":"Overcast with rain. High of 3C with a windchill as low as -8C. Windy. Winds from the ENE at 15 to 25 km/h. Chance of rain 100%.",
		"pop":"100"
		}
		,
		{
		"period":3,
		"icon":"snow",
		"icon_url":"http://icons-ak.wxug.com/i/c/k/snow.gif",
		"title":"Friday Night",
		"fcttext":"Overcast with snow. Low of 16F with a windchill as low as 1F. Windy. Winds from the NNE at 25 to 35 mph with gusts to 50 mph. Chance of snow 100% with accumulations up to 21 in. possible.",
		"fcttext_metric":"Overcast with snow. Low of -9C with a windchill as low as -17C. Windy. Winds from the NNE at 45 to 55 km/h with gusts to 80 km/h. Chance of snow 100% with accumulations up to 53 cm possible.",
		"pop":"100"
		}
		,
		{
		"period":4,
		"icon":"snow",
		"icon_url":"http://icons-ak.wxug.com/i/c/k/snow.gif",
		"title":"Saturday",
		"fcttext":"Overcast with snow. High of 23F with a windchill as low as -6F. Windy. Winds from the NNW at 25 to 35 mph with gusts to 50 mph. Chance of snow 100% with accumulations up to 12 in. possible.",
		"fcttext_metric":"Overcast with snow. High of -5C with a windchill as low as -21C. Windy. Winds from the NNW at 40 to 55 km/h with gusts to 80 km/h. Chance of snow 100% with accumulations up to 31 cm possible.",
		"pop":"100"
		}
		,
		{
		"period":5,
		"icon":"partlycloudy",
		"icon_url":"http://icons-ak.wxug.com/i/c/k/partlycloudy.gif",
		"title":"Saturday Night",
		"fcttext":"Overcast in the evening, then clear. Low of 0F with a windchill as low as -18F. Breezy. Winds from the NW at 10 to 20 mph.",
		"fcttext_metric":"Overcast in the evening, then clear. Low of -18C with a windchill as low as -28C. Windy. Winds from the NW at 20 to 30 km/h.",
		"pop":"20"
		}
		,
		{
		"period":6,
		"icon":"clear",
		"icon_url":"http://icons-ak.wxug.com/i/c/k/clear.gif",
		"title":"Sunday",
		"fcttext":"Clear. High of 30F with a windchill as low as 0F. Winds from the WNW at 10 to 15 mph.",
		"fcttext_metric":"Clear. High of -1C with a windchill as low as -18C. Breezy. Winds from the WNW at 15 to 20 km/h.",
		"pop":"0"
		}
		,
		{
		"period":7,
		"icon":"clear",
		"icon_url":"http://icons-ak.wxug.com/i/c/k/clear.gif",
		"title":"Sunday Night",
		"fcttext":"Clear. Low of 3F. Winds from the West at 5 to 10 mph.",
		"fcttext_metric":"Clear. Low of -16C. Winds from the West at 10 to 15 km/h.",
		"pop":"0"
		}
		],
		"simpleforecast": {
		"forecastday": [
		{"date":{
	"epoch":"1360292400",
	"pretty":"10:00 PM EST on February 07, 2013",
	"day":7,
	"month":2,
	"year":2013,
	"yday":37,
	"hour":22,
	"min":"00",
	"sec":0,
	"isdst":"0",
	"monthname":"February",
	"weekday_short":"Thu",
	"weekday":"Thursday",
	"ampm":"PM",
	"tz_short":"EST",
	"tz_long":"America/New_York"
},
		"period":1,
		"high": {
		"fahrenheit":"28",
		"celsius":"-2"
		},
		"low": {
		"fahrenheit":"19",
		"celsius":"-7"
		},
		"conditions":"Partly Cloudy",
		"icon":"partlycloudy",
		"icon_url":"http://icons-ak.wxug.com/i/c/k/partlycloudy.gif",
		"skyicon":"partlycloudy",
		"pop":0,
		"qpf_allday": {
		"in": 0.00,
		"mm": 0.0
		},
		"qpf_day": {
		"in": 0.00,
		"mm": 0.0
		},
		"qpf_night": {
		"in": 0.02,
		"mm": 0.5
		},
		"snow_allday": {
		"in": 0,
		"cm": 0
		},
		"snow_day": {
		"in": 0,
		"cm": 0
		},
		"snow_night": {
		"in": 0,
		"cm": 1
		},
		"maxwind": {
		"mph": 7,
		"kph": 11,
		"dir": "NNW",
		"degrees": 327
		},
		"avewind": {
		"mph": 3,
		"kph": 5,
		"dir": "SE",
		"degrees": 129
		},
		"avehumidity": 49,
		"maxhumidity": 58,
		"minhumidity": 31
		}
		,
		{"date":{
	"epoch":"1360378800",
	"pretty":"10:00 PM EST on February 08, 2013",
	"day":8,
	"month":2,
	"year":2013,
	"yday":38,
	"hour":22,
	"min":"00",
	"sec":0,
	"isdst":"0",
	"monthname":"February",
	"weekday_short":"Fri",
	"weekday":"Friday",
	"ampm":"PM",
	"tz_short":"EST",
	"tz_long":"America/New_York"
},
		"period":2,
		"high": {
		"fahrenheit":"37",
		"celsius":"3"
		},
		"low": {
		"fahrenheit":"16",
		"celsius":"-9"
		},
		"conditions":"Snow",
		"icon":"snow",
		"icon_url":"http://icons-ak.wxug.com/i/c/k/snow.gif",
		"skyicon":"cloudy",
		"pop":100,
		"qpf_allday": {
		"in": 0.76,
		"mm": 19.3
		},
		"qpf_day": {
		"in": 0.10,
		"mm": 2.5
		},
		"qpf_night": {
		"in": 1.30,
		"mm": 33.0
		},
		"snow_allday": {
		"in": 9,
		"cm": 22
		},
		"snow_day": {
		"in": 0,
		"cm": 1
		},
		"snow_night": {
		"in": 21,
		"cm": 53
		},
		"maxwind": {
		"mph": 18,
		"kph": 29,
		"dir": "NE",
		"degrees": 39
		},
		"avewind": {
		"mph": 15,
		"kph": 24,
		"dir": "NE",
		"degrees": 52
		},
		"avehumidity": 63,
		"maxhumidity": 88,
		"minhumidity": 53
		}
		,
		{"date":{
	"epoch":"1360465200",
	"pretty":"10:00 PM EST on February 09, 2013",
	"day":9,
	"month":2,
	"year":2013,
	"yday":39,
	"hour":22,
	"min":"00",
	"sec":0,
	"isdst":"0",
	"monthname":"February",
	"weekday_short":"Sat",
	"weekday":"Saturday",
	"ampm":"PM",
	"tz_short":"EST",
	"tz_long":"America/New_York"
},
		"period":3,
		"high": {
		"fahrenheit":"23",
		"celsius":"-5"
		},
		"low": {
		"fahrenheit":"0",
		"celsius":"-18"
		},
		"conditions":"Snow",
		"icon":"snow",
		"icon_url":"http://icons-ak.wxug.com/i/c/k/snow.gif",
		"skyicon":"cloudy",
		"pop":100,
		"qpf_allday": {
		"in": 1.34,
		"mm": 34.0
		},
		"qpf_day": {
		"in": 0.61,
		"mm": 15.5
		},
		"qpf_night": {
		"in": 0.07,
		"mm": 1.8
		},
		"snow_allday": {
		"in": 26,
		"cm": 66
		},
		"snow_day": {
		"in": 12,
		"cm": 31
		},
		"snow_night": {
		"in": 1,
		"cm": 2
		},
		"maxwind": {
		"mph": 32,
		"kph": 51,
		"dir": "NNW",
		"degrees": 340
		},
		"avewind": {
		"mph": 19,
		"kph": 30,
		"dir": "NW",
		"degrees": 311
		},
		"avehumidity": 54,
		"maxhumidity": 91,
		"minhumidity": 48
		}
		,
		{"date":{
	"epoch":"1360551600",
	"pretty":"10:00 PM EST on February 10, 2013",
	"day":10,
	"month":2,
	"year":2013,
	"yday":40,
	"hour":22,
	"min":"00",
	"sec":0,
	"isdst":"0",
	"monthname":"February",
	"weekday_short":"Sun",
	"weekday":"Sunday",
	"ampm":"PM",
	"tz_short":"EST",
	"tz_long":"America/New_York"
},
		"period":4,
		"high": {
		"fahrenheit":"30",
		"celsius":"-1"
		},
		"low": {
		"fahrenheit":"3",
		"celsius":"-16"
		},
		"conditions":"Clear",
		"icon":"clear",
		"icon_url":"http://icons-ak.wxug.com/i/c/k/clear.gif",
		"skyicon":"sunny",
		"pop":0,
		"qpf_allday": {
		"in": 0.00,
		"mm": 0.0
		},
		"qpf_day": {
		"in": 0.00,
		"mm": 0.0
		},
		"qpf_night": {
		"in": 0.00,
		"mm": 0.0
		},
		"snow_allday": {
		"in": 0,
		"cm": 0
		},
		"snow_day": {
		"in": 0,
		"cm": 0
		},
		"snow_night": {
		"in": 0,
		"cm": 0
		},
		"maxwind": {
		"mph": 12,
		"kph": 19,
		"dir": "NW",
		"degrees": 309
		},
		"avewind": {
		"mph": 8,
		"kph": 13,
		"dir": "WNW",
		"degrees": 289
		},
		"avehumidity": 48,
		"maxhumidity": 90,
		"minhumidity": 42
		}
		]
		}
	}
}
JSON

TWITTER_JSON_COLLECTION = 
<<-TWEETS
{"completed_in":0.044,"max_id":299950023326703616,"max_id_str":"299950023326703616","next_page":"?page=2&max_id=299950023326703616&q=%40anypresence","page":1,"query":"%40anypresence","refresh_url":"?since_id=299950023326703616&q=%40anypresence","results":[{"created_at":"Fri, 08 Feb 2013 18:37:13 +0000","from_user":"AppsAlliance","from_user_id":282100055,"from_user_id_str":"282100055","from_user_name":"App Developers","geo":null,"id":299950023326703616,"id_str":"299950023326703616","iso_language_code":"en","profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/1732623696\/avatar_2_normal.jpg","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/1732623696\/avatar_2_normal.jpg","source":"&lt;a href=&quot;http:\/\/twitter.com\/&quot;&gt;web&lt;\/a&gt;","text":"RT @DeveloperWeek: We had a great time at #DevWk13! Another hand for some of our sponsors! @AnyPresence @filepicker @hackerleague @AppsAlliance @goStormpath","to_user":null,"to_user_id":0,"to_user_id_str":"0","to_user_name":null},{"created_at":"Fri, 08 Feb 2013 18:30:27 +0000","from_user":"DeveloperWeek","from_user_id":634753610,"from_user_id_str":"634753610","from_user_name":"DeveloperWeek 2013","geo":null,"id":299948323262038016,"id_str":"299948323262038016","iso_language_code":"en","profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/2760644214\/a1f001c811af34af073e450d882ba226_normal.png","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/2760644214\/a1f001c811af34af073e450d882ba226_normal.png","source":"&lt;a href=&quot;http:\/\/www.hootsuite.com&quot;&gt;HootSuite&lt;\/a&gt;","text":"We had a great time at #DevWk13! Another hand for some of our sponsors! @AnyPresence @filepicker @hackerleague @AppsAlliance @goStormpath","to_user":null,"to_user_id":0,"to_user_id_str":"0","to_user_name":null},{"created_at":"Fri, 08 Feb 2013 17:52:27 +0000","from_user":"StackMobSteve","from_user_id":832057658,"from_user_id_str":"832057658","from_user_name":"StackMob Steve","geo":null,"id":299938761091997696,"id_str":"299938761091997696","iso_language_code":"en","profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/2688912726\/677a8107bc3b9938b2e8338eff2536b0_normal.png","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/2688912726\/677a8107bc3b9938b2e8338eff2536b0_normal.png","source":"&lt;a href=&quot;http:\/\/www.tweetdeck.com&quot;&gt;TweetDeck&lt;\/a&gt;","text":"RT @Kinvey: Day 2 @apps_world! Check out all the #BaaS booths @stackmob @parseit @kii @anypresence @fatfractal http:\/\/t.co\/6Yr6E1Pw","to_user":null,"to_user_id":0,"to_user_id_str":"0","to_user_name":null},{"created_at":"Fri, 08 Feb 2013 17:11:30 +0000","from_user":"Kinvey","from_user_id":237110997,"from_user_id_str":"237110997","from_user_name":"Kinvey","geo":null,"id":299928454168715266,"id_str":"299928454168715266","iso_language_code":"en","profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/2373696102\/coo42z564s7xsoi8m7sr_normal.png","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/2373696102\/coo42z564s7xsoi8m7sr_normal.png","source":"&lt;a href=&quot;http:\/\/www.apple.com&quot;&gt;iOS&lt;\/a&gt;","text":"Day 2 @apps_world! Check out all the #BaaS booths @stackmob @parseit @kii @anypresence @fatfractal http:\/\/t.co\/6Yr6E1Pw","to_user":null,"to_user_id":0,"to_user_id_str":"0","to_user_name":null},{"created_at":"Fri, 08 Feb 2013 14:03:30 +0000","from_user":"Anirban7","from_user_id":14499157,"from_user_id_str":"14499157","from_user_name":"Anirban Chakrabarti","geo":null,"id":299881142981632000,"id_str":"299881142981632000","iso_language_code":"en","profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/229651158\/ac_normal.jpg","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/229651158\/ac_normal.jpg","source":"&lt;a href=&quot;http:\/\/twitter.com\/download\/iphone&quot;&gt;Twitter for iPhone&lt;\/a&gt;","text":"RT @AnyPresence: Looking back at day one of #AppsWorld North America \u2013 http:\/\/t.co\/xgy6UqvE","to_user":null,"to_user_id":0,"to_user_id_str":"0","to_user_name":null},{"created_at":"Fri, 08 Feb 2013 14:03:24 +0000","from_user":"Anirban7","from_user_id":14499157,"from_user_id_str":"14499157","from_user_name":"Anirban Chakrabarti","geo":null,"id":299881117073416192,"id_str":"299881117073416192","iso_language_code":"en","profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/229651158\/ac_normal.jpg","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/229651158\/ac_normal.jpg","source":"&lt;a href=&quot;http:\/\/twitter.com\/download\/iphone&quot;&gt;Twitter for iPhone&lt;\/a&gt;","text":"RT @AnyPresence: Apps World North America \u2013 Day One Recap http:\/\/t.co\/xgy6UqvE","to_user":null,"to_user_id":0,"to_user_id_str":"0","to_user_name":null},{"created_at":"Thu, 07 Feb 2013 14:46:54 +0000","from_user":"AppsAlliance","from_user_id":282100055,"from_user_id_str":"282100055","from_user_name":"App Developers","geo":null,"id":299529675296890880,"id_str":"299529675296890880","iso_language_code":"pl","profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/1732623696\/avatar_2_normal.jpg","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/1732623696\/avatar_2_normal.jpg","source":"&lt;a href=&quot;http:\/\/twitter.com\/&quot;&gt;web&lt;\/a&gt;","text":"RT @DeveloperWeek: Thx to our #DevWk13 sponsors! @challengepost @AnyPresence @filepicker @Continuuity @BigCommerce @hackerleague @AppsAlliance @NewRelicStatus","to_user":null,"to_user_id":0,"to_user_id_str":"0","to_user_name":null},{"created_at":"Thu, 07 Feb 2013 04:12:33 +0000","from_user":"mwaci","from_user_id":14679880,"from_user_id_str":"14679880","from_user_name":"mwaci","geo":null,"id":299370037926576129,"id_str":"299370037926576129","iso_language_code":"en","profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/1760684319\/IMG_0985_normal.JPG","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/1760684319\/IMG_0985_normal.JPG","source":"&lt;a href=&quot;https:\/\/mobile.twitter.com&quot;&gt;Mobile Web (M5)&lt;\/a&gt;","text":"RT @PearsonAPI: @MogreetAPI @DeveloperWeek @Quantcast @nuodb @ChallengePost @AnyPresence @FilePicker @Continuuity @BigCommerce Having a great time, thanks!","to_user":null,"to_user_id":0,"to_user_id_str":"0","to_user_name":null,"in_reply_to_status_id":298950561263411200,"in_reply_to_status_id_str":"298950561263411200"},{"created_at":"Thu, 07 Feb 2013 01:15:37 +0000","from_user":"nuodb","from_user_id":116511848,"from_user_id_str":"116511848","from_user_name":"NUODB","geo":null,"id":299325508443860992,"id_str":"299325508443860992","iso_language_code":"en","profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/2845739305\/9897f042b032d5553aa7ccfa11d04482_normal.jpeg","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/2845739305\/9897f042b032d5553aa7ccfa11d04482_normal.jpeg","source":"&lt;a href=&quot;http:\/\/twitter.com\/&quot;&gt;web&lt;\/a&gt;","text":"RT @DeveloperWeek: Another hand for our sponsors! @Quantcast @MogreetAPI @PearsonAPI @nuodb @challengepost @AnyPresence @filepicker @Continuuity @BigCommerce","to_user":null,"to_user_id":0,"to_user_id_str":"0","to_user_name":null},{"created_at":"Thu, 07 Feb 2013 01:07:32 +0000","from_user":"nuodb","from_user_id":116511848,"from_user_id_str":"116511848","from_user_name":"NUODB","geo":null,"id":299323476630728704,"id_str":"299323476630728704","iso_language_code":"en","profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/2845739305\/9897f042b032d5553aa7ccfa11d04482_normal.jpeg","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/2845739305\/9897f042b032d5553aa7ccfa11d04482_normal.jpeg","source":"&lt;a href=&quot;http:\/\/twitter.com\/&quot;&gt;web&lt;\/a&gt;","text":"RT @PearsonAPI: @MogreetAPI @DeveloperWeek @Quantcast @nuodb @ChallengePost @AnyPresence @FilePicker @Continuuity @BigCommerce Having a great time, thanks!","to_user":null,"to_user_id":0,"to_user_id_str":"0","to_user_name":null,"in_reply_to_status_id":298950561263411200,"in_reply_to_status_id_str":"298950561263411200"},{"created_at":"Wed, 06 Feb 2013 23:32:03 +0000","from_user":"PearsonAPI","from_user_id":357502304,"from_user_id_str":"357502304","from_user_name":"Pearson Developers","geo":null,"id":299299446578098176,"id_str":"299299446578098176","iso_language_code":"en","profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/2627602652\/snle0jx6sfbrty8mkgxq_normal.png","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/2627602652\/snle0jx6sfbrty8mkgxq_normal.png","source":"&lt;a href=&quot;http:\/\/twitter.com\/&quot;&gt;web&lt;\/a&gt;","text":"@MogreetAPI @DeveloperWeek @Quantcast @nuodb @ChallengePost @AnyPresence @FilePicker @Continuuity @BigCommerce Having a great time, thanks!","to_user":"MogreetAPI","to_user_id":568562486,"to_user_id_str":"568562486","to_user_name":"Mogreet Developers","in_reply_to_status_id":298950561263411200,"in_reply_to_status_id_str":"298950561263411200"},{"created_at":"Wed, 06 Feb 2013 19:13:32 +0000","from_user":"MattyC78","from_user_id":40147486,"from_user_id_str":"40147486","from_user_name":"Matt Cumello","geo":null,"id":299234387281723392,"id_str":"299234387281723392","iso_language_code":"en","profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/2511723031\/r46fx3n9v80syxi3xqrp_normal.jpeg","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/2511723031\/r46fx3n9v80syxi3xqrp_normal.jpeg","source":"&lt;a href=&quot;http:\/\/twitter.com\/&quot;&gt;web&lt;\/a&gt;","text":"RT @AnyPresence: AnyPresence First to Support iOS Storyboard and Android XML Layout: http:\/\/t.co\/f7hznVHf","to_user":null,"to_user_id":0,"to_user_id_str":"0","to_user_name":null},{"created_at":"Wed, 06 Feb 2013 16:20:07 +0000","from_user":"MogreetAPI","from_user_id":568562486,"from_user_id_str":"568562486","from_user_name":"Mogreet Developers","geo":null,"id":299190745825423360,"id_str":"299190745825423360","iso_language_code":"en","profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/3154673547\/29be106bffd504904fe88d2050a9728e_normal.jpeg","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/3154673547\/29be106bffd504904fe88d2050a9728e_normal.jpeg","source":"&lt;a href=&quot;http:\/\/twitter.com\/download\/iphone&quot;&gt;Twitter for iPhone&lt;\/a&gt;","text":"RT @DeveloperWeek: Another hand for our sponsors! @Quantcast @MogreetAPI @PearsonAPI @nuodb @challengepost @AnyPresence @filepicker @Continuuity @BigCommerce","to_user":null,"to_user_id":0,"to_user_id_str":"0","to_user_name":null},{"created_at":"Wed, 06 Feb 2013 00:25:42 +0000","from_user":"MogreetAPI","from_user_id":568562486,"from_user_id_str":"568562486","from_user_name":"Mogreet Developers","geo":null,"id":298950561263411200,"id_str":"298950561263411200","iso_language_code":"fr","profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/3154673547\/29be106bffd504904fe88d2050a9728e_normal.jpeg","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/3154673547\/29be106bffd504904fe88d2050a9728e_normal.jpeg","source":"&lt;a href=&quot;http:\/\/www.hootsuite.com&quot;&gt;HootSuite&lt;\/a&gt;","text":"RT @developerweek: Our sponsors! @Quantcast @MogreetAPI @PearsonAPI @nuodb @ChallengePost @AnyPresence @FilePicker @Continuuity @BigCommerce","to_user":null,"to_user_id":0,"to_user_id_str":"0","to_user_name":null},{"created_at":"Wed, 06 Feb 2013 00:01:15 +0000","from_user":"DeveloperWeek","from_user_id":634753610,"from_user_id_str":"634753610","from_user_name":"DeveloperWeek 2013","geo":null,"id":298944408156512256,"id_str":"298944408156512256","iso_language_code":"en","profile_image_url":"http:\/\/a0.twimg.com\/profile_images\/2760644214\/a1f001c811af34af073e450d882ba226_normal.png","profile_image_url_https":"https:\/\/si0.twimg.com\/profile_images\/2760644214\/a1f001c811af34af073e450d882ba226_normal.png","source":"&lt;a href=&quot;http:\/\/www.hootsuite.com&quot;&gt;HootSuite&lt;\/a&gt;","text":"Another hand for our sponsors! @Quantcast @MogreetAPI @PearsonAPI @nuodb @challengepost @AnyPresence @filepicker @Continuuity @BigCommerce","to_user":null,"to_user_id":0,"to_user_id_str":"0","to_user_name":null}],"results_per_page":15,"since_id":0,"since_id_str":"0"}
TWEETS

GANNETT_ARTICLES = <<-JSON
{\"stories\":[{\"xml\":[{\"article\":[{\"abstract\":\"Nothing succeeds like excess in revival of musical thriller\",\"body\":[{\"p\":[\"NEW YORK - Ah, Broadway in the 1990s: all those bloated, humorless musicals (some held over from the more excessive successes of the '80s), with their amorphous scores, vapid books and overblown set and costume design.\",\"If you're getting nostalgic, you may be pleased to learn that a new production of <i>Jekyll & Hyde<\\/i> (** out of four) opened Thursday at the Marquis Theatre.\",\"For who missed it the first time, the Leslie Bricusse\\/Frank Wildhorn musical - adapted rather loosely from Robert Louis Stevenson's famed novella about an English gentleman with two very different personalities - follows the ordeal of Henry Jekyll, an earnest young scientist who longs to pinpoint what he describes, in the characteristically bombastic opening number, as \\\"the nature of the demons that possess man's soul.\\\"\",\"After his research proposal is dismissed by a prestigious hospital's cartoonishly pompous Board of Governors, Jekyll determines to be his own subject. But the experiment goes awry, and Edward Hyde is born - a bummer for Jekyll, who was hoping not only to save the world but to marry a fair maiden with a well-connected father.\",\"Things get even more complicated when Jekyll befriends a voluptuous brothel worker, Lucy, who sees him as a potential savior but, naturally, fears Hyde - even though she gets kinda turned on when the latter pays her a surprise visit in the second act.\",\"This revival, directed with blunt force by Jeff Calhoun, is perhaps most notable for casting pop aspirants-turned-musical theater babies in the leads. <i>American Idol <\\/i>alumnus Constantine Maroulis, who earned a Tony Award nomination starring in <i>Rock of Ages<\\/i>, tackles the dual role of Jekyll and Hyde; Deboran Cox, a gifted R&B singer who appeared in <i>Aida<\\/i> in 2004, plays Lucy.\",\"The leading man's task is harder, not least of all because Calhoun, in deference to Bricusse's witless book and lyrics, has the performers cast as upper-crust Brits all act and sing as if they'd just swallowed starch. Maroulis' attempts at the King's English are shaky; he tends to speak in a mannered whisper, spitting out his consonants when he remembers to and dutifully exaggerating certain vowel sounds.\",\"He seems more comfortable when singing, tearing into Wildhorn's hokey melodies with the vengeance of an arena-rock crooner on steroids. At last Tuesday's performance, the audience ate up his histrionics; the louder and longer the note, the better.\",\"Cox also struggles with her adopted accent - Cockney, in Lucy's case - but proves a much more graceful singer. Her ripe, creamy voice, with its alluring flecks of whiskey, lends a bit more soul to the generic ballads meant to express Lucy's suffering and longing.\",\"Alas, a few glimpses of unfettered emotion cannot sustain a two-hour-plus parade of shrill melodrama. But if the latter is more your thing anyway, you're in luck.\"]}],\"byline\":\"by Elysa Gardner USA TODAY, USA TODAY\",\"copyright\":\"Copyright 2013 USATODAY.com\",\"dateline\":\"\",\"docId\":\"2090599\",\"docSourceId\":\"\",\"images\":[{\"image\":[{\"alternatetext\":\"\",\"caption\":\"Constantine Maroulis experiments as Dr. Jekyll, only to become Mr. Hyde.\",\"credit\":\"Chris Bennion\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/17\\/2jekyll-and-hyde-stage-jy-6-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Constantine Maroulis experiments as Dr. Jekyll, only to become Mr. Hyde.\",\"credit\":\"Chris Bennion\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/17\\/2jekyll-and-hyde-stage-jy-6-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Constantine Maroulis experiments as Dr. Jekyll, only to become Mr. Hyde.\",\"credit\":\"Chris Bennion\",\"format\":\"large_16_9\",\"height\":\"1185\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/17\\/2jekyll-and-hyde-stage-jy-6-16_9.jpg\",\"width\":\"2100\"},{\"alternatetext\":\"\",\"caption\":\"Constantine Maroulis and Deborah Cox star in 'Jekyll & Hyde.'\",\"credit\":\"Chris Bennion\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/17\\/jekyll-and-hyde-stage-jy-68-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Constantine Maroulis and Deborah Cox star in 'Jekyll & Hyde.'\",\"credit\":\"Chris Bennion\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/17\\/jekyll-and-hyde-stage-jy-68-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Constantine Maroulis and Deborah Cox star in 'Jekyll & Hyde.'\",\"credit\":\"Chris Bennion\",\"format\":\"large_16_9\",\"height\":\"968\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/17\\/jekyll-and-hyde-stage-jy-68-16_9.jpg\",\"width\":\"1709\"}]}],\"lastUpdatedDate\":\"20130423T171739-0400\",\"mediaType\":\"document\",\"mobileUrl\":\"http:\\/\\/usat.ly\\/173nhnk\",\"publishedDate\":\"20130418T192252-0400\",\"shortUrl\":\"http:\\/\\/usat.ly\\/1762U98\",\"source\":\"USATODAY\",\"ssts\":[{\"section\":\"life\"}],\"title\":\"'Jekyll' brings '90s bombast back\",\"url\":\"http:\\/\\/www.usatoday.com\\/story\\/life\\/2013\\/04\\/18\\/broadway-review-jekyll-and-hyde\\/2090599\\/\",\"videos\":[]},{\"abstract\":\"Renowned writer and actress give new voice to the mother of Jesus.\",\"body\":[{\"p\":[\"NEW YORK -- If you arrive before curtain time at the new Broadway production of Colm Toibin's <i>The Testament of Mary<\\/i> (* * * out of four), you can walk up on stage and through a simulated museum exhibit evoking the ordeal of the play's title, and only, character: the mother of Jesus Christ.\",\"Prominent in it is Mary herself -- or rather Fiona Shaw, the extraordinary actress who plays her. Shaw sits immobile in a clear box, her face bearing an expression of serene warmth -- even with a live vulture poised just beside her.\",\"Once the audience is seated, Shaw elegantly leads the bird of prey offstage -- and launches into an 85-minute monologue that thoroughly shatters the calmness of the prelude, along with any conceptions of Mary as a passive, obedient figure.\",\"Like Toibin, who adapted <i>Testament<\\/i> from his own novella, Shaw was born in Ireland in the 1950s and raised Catholic. Religion, not surprisingly, has been a source of both fascination and skepticism for both artists. When the play, which opened Monday, began previews in March, protesters gathered outside the Walter Kerr Theatre to object to what one sign described as its \\\"blasphemous\\\" nature.\",\"Certainly, Toibin's Queen of Heaven, whom we meet years after Jesus has been crucified, is capable of acerbic irreverence. She refers early on to two regular visitors, presumably apostles, who watch and question her, and \\\"the brutality boiling in their blood.\\\" She tells us sardonically of the \\\"group of misfits\\\" that her son \\\"gathered around him,\\\" and her impatience with them.\",\"But Shaw's characteristically textured delivery also shows us Mary's struggle not to seem embittered; and Toibin has her remember Jesus with a great tenderness that is extended to others, notably Lazarus, whose story is retold with particular poignance. The most duplicitous character, a false confidante named Marcus, is fictional.\",\"What emerges is a portrait of a loving mother with a strong, sharp mind and a broken heart. Under the vigorous direction of her longtime collaborator Deborah Warner, Shaw gives full force to Toibin's imagining -- clearly not meant to be any stab at literal history -- of a woman driven as much by her desire for justice and sympathy for others as by grief or fury.\",\"The fury, it should be noted, never accommodates the magnificent ferocity that Shaw and Warner brought to a very different mother's tale in their <i>Medea<\\/i>. For all its eloquence and emotional range, in fact, Toibin's play lacks a certain dramatic dynamism; it's actually more compelling to read than to watch, even in the hands of so formidable a leading lady.\",\"Still, for anyone who's curious about its subject -- believers and non-believers alike -- <i>Testament<\\/i> offers an intriguing, and deeply compassionate, account.\"]}],\"byline\":\"by Elysa Gardner, USA TODAY\",\"copyright\":\"Copyright 2013 USATODAY.com\",\"dateline\":\"\",\"docId\":\"2101767\",\"docSourceId\":\"\",\"images\":[{\"image\":[{\"alternatetext\":\"\",\"caption\":\"Fiona Shaw in has the titular -- and only -- role in 'The Testament of Mary.'\",\"credit\":\"Paul Kolnik\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/22\\/testament-of-mary-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Fiona Shaw in has the titular -- and only -- role in 'The Testament of Mary.'\",\"credit\":\"Paul Kolnik\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/22\\/testament-of-mary-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Fiona Shaw in has the titular -- and only -- role in 'The Testament of Mary.'\",\"credit\":\"Paul Kolnik\",\"format\":\"large_16_9\",\"height\":\"1185\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/22\\/testament-of-mary-16_9.jpg\",\"width\":\"2100\"}]}],\"lastUpdatedDate\":\"20130423T171659-0400\",\"mediaType\":\"document\",\"mobileUrl\":\"http:\\/\\/usat.ly\\/17QFFkJ\",\"publishedDate\":\"20130422T220000-0400\",\"shortUrl\":\"http:\\/\\/usat.ly\\/17ROZ7J\",\"source\":\"USATODAY\",\"ssts\":[{\"section\":\"life\"}],\"title\":\"'Mary': Full of grace and compassion\",\"url\":\"http:\\/\\/www.usatoday.com\\/story\\/life\\/2013\\/04\\/22\\/broadway-review-the-testament-of-mary\\/2101767\\/\",\"videos\":[]},{\"abstract\":\"Scottish actor takes on The Scottish Play, and all its major characters, in new production.\",\"body\":[{\"p\":[\"NEW YORK -- Any actor intent on tackling all the major characters in Shakespeare's most oft-performed work in a single production could suffer from his own tragic hubris. Or he might simply be a madman.\",\"Alan Cumming more or less acknowledges as much in his production of <i>Macbeth <\\/i>(* * 1\\/2 stars out of four), which opened Sunday at Broadway's Ethel Barrymore Theatre. Developed at the National Theatre of Scotland, this staging of the Scottish Play unfolds in a mental hospital, introducing its Scottish star -- who speaks in a rolling burr throughout -- as a patient.\",\"In the silent, chilling opening minutes, this unnamed man is stripped of blood-stained clothing by a pair of attendants -- played by Jenny Sterlin and Brendan Titley, each given bits of dialogue later on -- who also tend suspiciously to his fingernails before re-dressing him in white hospital garb. Clearly, this guy is capable of violence, perhaps criminally insane. Who better to lead us through Macbeth's sorry tale?\",\"That Cumming does, shifting adroitly from character to character (with just small ones excised) with few props -- among them a sink, a bathtub, an apple and a large baby doll who doubles as Malcolm, son and chosen heir to King Duncan, the first in a chain of human obstacles whom the Thane of Cawdor, urged on by his famously ambitious wife, demolishes in his doomed quest for power.\",\"The doll, which Cumming manages like a puppeteer, is hardly the hammiest aspect of his approach. He milks some laughs from the audience portraying Duncan as a pompous, mincing figure, and more in his exchanges between Macbeth and Lady Macbeth, one of which is staged to suggest that the happy couple has just taken a bath. Nude and wet, Cumming holds a towel in front of him, as a woman might, then suddenly flips it around his waist, once again the man of the house (at least in the literal sense).\",\"The carnal bond between the Macbeths is emphasized in other scenes -- lovemaking is even simulated -- and there is much shedding of clothes, and putting them back on, with Cumming stripped down to his skivvies on several occasions.\",\"The actor's facial expressions, meanwhile, are made more prominent by three screens hanging over the stage, which prove especially helpful when those mischievous witches turn up. Fergus O'Hare's spooky sound design and Max Richter's melancholy music add to the exaggerated tension, as do the hospital attendants, who keep watch on the patient through a window and, when he really seems to be losing it, pop in with a soothing injection.\",\"But the most affecting moments are often the least fussy. Cumming is never more moving than when he shows us Macduff -- the least mannered of his portrayals, fittingly -- reacting to the murder of his wife and children.\",\"In general, though, this minimalist <i>Macbeth<\\/i> is more technically impressive than it is emotionally potent.\"]}],\"byline\":\"by Elysa Gardner, USA TODAY\",\"copyright\":\"Copyright 2013 USATODAY.com\",\"dateline\":\"\",\"docId\":\"2095981\",\"docSourceId\":\"\",\"images\":[{\"image\":[{\"alternatetext\":\"\",\"caption\":\"Alan Cumming stars in a one-man interpretation of 'Macbeth,' at the Ethel Barrymore Theatre in New York City.\",\"credit\":\"Getty Images\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/19\\/1macbeth-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Alan Cumming stars in a one-man interpretation of 'Macbeth,' at the Ethel Barrymore Theatre in New York City.\",\"credit\":\"Getty Images\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/19\\/1macbeth-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Alan Cumming stars in a one-man interpretation of 'Macbeth,' at the Ethel Barrymore Theatre in New York City.\",\"credit\":\"Getty Images\",\"format\":\"large_16_9\",\"height\":\"2890\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/19\\/1macbeth-16_9.jpg\",\"width\":\"5108\"},{\"alternatetext\":\"\",\"caption\":\"Alan Cumming stars in a one-man interpretation of 'Macbeth,' directed by John Tiffany and Andrew Goldberg.\",\"credit\":\"Getty Images\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/19\\/3macbeth-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Alan Cumming stars in a one-man interpretation of 'Macbeth,' directed by John Tiffany and Andrew Goldberg.\",\"credit\":\"Getty Images\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/19\\/3macbeth-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Alan Cumming stars in a one-man interpretation of 'Macbeth,' directed by John Tiffany and Andrew Goldberg.\",\"credit\":\"Getty Images\",\"format\":\"large_16_9\",\"height\":\"1674\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/19\\/3macbeth-16_9.jpg\",\"width\":\"2965\"}]}],\"lastUpdatedDate\":\"20130423T171621-0400\",\"mediaType\":\"document\",\"mobileUrl\":\"http:\\/\\/usat.ly\\/17vnTQP\",\"publishedDate\":\"20130421T220000-0400\",\"shortUrl\":\"http:\\/\\/usat.ly\\/17QFt4R\",\"source\":\"USATODAY\",\"ssts\":[{\"section\":\"life\"}],\"title\":\"Alan Cumming is 'Macbeth'\",\"url\":\"http:\\/\\/www.usatoday.com\\/story\\/life\\/2013\\/04\\/21\\/broadway-review-macbeth\\/2095981\\/\",\"videos\":[]},{\"abstract\":\"Actress returns to Broadway, 30 years later, in revival of 'Trip to Bountiful.'\",\"body\":[{\"p\":[\"NEW YORK - When you are in the presence of Cicely Tyson, never use the term \\\"you guys\\\" - at least, not when addressing women.\",\"\\\"We are <i>not<\\/i> guys,\\\" Tyson notes, correcting a reporter. \\\"We are ladies. <i>Ladies<\\/i>.\\\"\",\"The celebrated actress is referring to herself and two of her co-stars in a new revival of <i>The Trip to Bountiful<\\/i>, Vanessa Williams and Condola Rashad. They are seated in a spare dressing room during a rehearsal break at the Stephen Sondheim Theatre, where the production of Horton Foote's classic play opens Tuesday.\",\"Tyson's tone is more amused than admonishing. An enduringly elegant figure at 79, with fine features and a lean frame kept in tact by a vegan diet - \\\"She is Miss Green Wheatgrass,\\\" Williams, 50, says admiringly - the stage and screen veteran smiles often and occasionally chuckles explaining how <i>Bountiful<\\/i> brought her back to Broadway after an absence of 30 years.\",\"The role of Carrie Watts, an aging widow who yearns to revisit the small Texas town where she grew up, first appealed to Tyson when she saw the 1985 screen adaptation, starring Geraldine Page. \\\"I went straight to my agent's office, and I told him that if he got me a role like that, I could retire. And I continued to tell him that at least once a month. And here we are - 28 years later.\\\"\",\"It was Hallie Foote, the late playwright's daughter and an acclaimed stage actress, who reached out to Tyson via a mutual friend. \\\"Hallie wanted to do her father's play with a black cast. And she told me, 'My father was such an admirer of your work that he wouldn't want anyone else to play this role.' Well, I could not believe that. But I said to myself, maybe this is something I should be doing.\\\"\",\"Michael Wilson, a noted director of Foote and Tennessee Williams, was tapped to helm the revival, in which Williams is cast as Carrie's domineering daughter-in-law and Rashad, 26, plays a young soldier's wife whom Carrie meets on her journey. (Cuba Gooding Jr. plays Carrie's son, and Tom Wopat - the only white actor in a principal role - appears as a sheriff moved by Carrie's longing to see her old home.)\",\"Williams describes the production as having \\\"different colors and a much different feel\\\" than other stagings of <i>Bountiful<\\/i>. \\\"It's very interactive. Our audiences sing back the hymns.\\\"\",\"Tyson nods. \\\"When black audiences go to movie theaters, they do interact,\\\" she says. \\\"They sing and dance if they feel like it. They talk back to the screen. It's great to have them feel free to do that in a Broadway theater.\\\"\",\"But Tyson emphasizes that the story transcends \\\"race, creed, color, creed, everything.\\\" She has found playing Carrie particularly poignant \\\"at this stage in my life. I think of all the elders I know who find themselves in her position. They've lost their husbands. The children are grown. Maybe you're not liked by a daughter-in-law, and yet you're sleeping on a couch in her home, when you used to have your own.\\\"\",\"For her own part, <i>Bountiful<\\/i>'s leading lady still maintains a youthful spirit. \\\"She's enjoying this role so much,\\\" says Rashad. \\\"One night I looked at her, and I just wanted to laugh. I thought, 'Control yourself!' \\\"\",\"Tyson is also looking ahead. \\\"I've already gotten an offer to do another show next year,\\\" she says, sounding a bit amazed. \\\"But I'm not thinking about that now - no, no, no. I'm still working on this one.\\\"\"]}],\"byline\":\"by Elysa Gardner  USA TODAY, USA TODAY\",\"copyright\":\"Copyright 2013 USATODAY.com\",\"dateline\":\"\",\"docId\":\"2091567\",\"docSourceId\":\"\",\"images\":[{\"image\":[{\"alternatetext\":\"\",\"caption\":\"Vanessa Williams, left, Cicely Tyson and Condola Rashad star in 'Trip to Bountiful.'\",\"credit\":\"Rebecca McAlpin for USA TODAY\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/19\\/cicely-tyson-williams-rasha-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Vanessa Williams, left, Cicely Tyson and Condola Rashad star in 'Trip to Bountiful.'\",\"credit\":\"Rebecca McAlpin for USA TODAY\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/19\\/cicely-tyson-williams-rasha-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Vanessa Williams, left, Cicely Tyson and Condola Rashad star in 'Trip to Bountiful.'\",\"credit\":\"Rebecca McAlpin for USA TODAY\",\"format\":\"large_16_9\",\"height\":\"1446\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/19\\/cicely-tyson-williams-rasha-16_9.jpg\",\"width\":\"2575\"},{\"alternatetext\":\"\",\"caption\":\"Vanessa Williams, left, Cicely Tyson and Cuba Gooding Jr. in 'Trip to Bountiful.'\",\"credit\":\"Joan Marcus\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/19\\/xxx-st250-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Vanessa Williams, left, Cicely Tyson and Cuba Gooding Jr. in 'Trip to Bountiful.'\",\"credit\":\"Joan Marcus\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/19\\/xxx-st250-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Vanessa Williams, left, Cicely Tyson and Cuba Gooding Jr. in 'Trip to Bountiful.'\",\"credit\":\"Joan Marcus\",\"format\":\"large_16_9\",\"height\":\"1695\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/19\\/xxx-st250-16_9.jpg\",\"width\":\"3000\"},{\"alternatetext\":\"\",\"caption\":\"Carrie (Tyson) meets Thelma (Condola Rashad) on the long bus ride to Bountiful, Texas.\",\"credit\":\"Joan Marcus\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/19\\/1bountiful-1-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Carrie (Tyson) meets Thelma (Condola Rashad) on the long bus ride to Bountiful, Texas.\",\"credit\":\"Joan Marcus\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/19\\/1bountiful-1-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Carrie (Tyson) meets Thelma (Condola Rashad) on the long bus ride to Bountiful, Texas.\",\"credit\":\"Joan Marcus\",\"format\":\"large_16_9\",\"height\":\"1692\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/19\\/1bountiful-1-16_9.jpg\",\"width\":\"3000\"}]}],\"lastUpdatedDate\":\"20130423T171336-0400\",\"mediaType\":\"document\",\"mobileUrl\":\"http:\\/\\/usat.ly\\/ZHPPwk\",\"publishedDate\":\"20130421T202257-0400\",\"shortUrl\":\"http:\\/\\/usat.ly\\/ZHPREo\",\"source\":\"USATODAY\",\"ssts\":[{\"section\":\"life\",\"subsection\":\"theater\"}],\"title\":\"Cicely Tyson's just one of the ladies\",\"url\":\"http:\\/\\/www.usatoday.com\\/story\\/life\\/theater\\/2013\\/04\\/21\\/cicely-tyson-trip-to-bountiful\\/2091567\\/\",\"videos\":[]},{\"abstract\":\"1983 play arrives with its bracing energy, dark humor and tender spirit intact.\",\"body\":[{\"p\":[\"NEW YORK -- \\\"We're merely mammals,\\\" Cole Porter observed in <i>Let's Misbehave<\\/i>; but the monkeying around he had in mind was very different from the kind that Tom Sturridge demonstrates in the first Broadway production of Lyle Kessler's 1983 play <i>Orphans <\\/i>(three and a half out of four stars).\",\"The British actor is cast as Phillip, who lives with his brother, Treat, in an old row house in North Philadelphia. Abandoned early on by their father, then left to their own devices when their mother died, the two have worked out a system for looking after each other: Treat goes out and robs people, while Phillip stays shut in at home, watching old movies and game shows on TV and eating tuna fish.\",\"Sturridge, in a mesmerizing, heartrending performance, makes the impact of living this way for more than a decade wrenchingly clear. His Phillip is a coil of restless energy and primal fear who literally leaps around -- from the staircase to the window to the sofa -- like a  caged primate in a zoo. He also crawls and cowers, terrorized both by Treat and the thought of walking outside.\",\"But Treat is no more civilized than his brother, which becomes obvious after he kidnaps Harold, a mysterious, wealthy older man played in this production, which opened Thursday at the Gerald Schoenfeld Theatre, by Alec Baldwin. Harold also came of age without parents; raised in an orphanage, he immediately identifies his captor as one of the \\\"dead-end kids\\\" he knew there -- and has little trouble turning the tables on him, so that Treat, portrayed by Ben Foster, ends up catering to his intended victim.\",\"Harold sees Treat as having potential in the dubious field that has earned him a fortune, along with powerful enemies and a little black book full of women's names. But while he admires the kid's capacity for violence, he worries about his lack of control. Phillip, in contrast, earns his affection immediately, and vice versa. As Harold begins mentoring the boys -- a process that is by turns darkly funny and moving to behold -- it's Phillip who seems to blossom, while Treat grows frustrated by his increasing lack of influence in the house.\",\"Under Daniel Sullivan's sharply intuitive direction, Baldwin brings a delightful comic esprit to his role, finding the aspirational Henry Higgins in a man who is essentially a gangster, and revealing both humor and pathos in Harold's paternal concern for the younger men. And Foster -- who replaced Shia LaBoeuf after the latter left the production amid rumors of discord, re-inforced by LaBoeuf's private Twitter messages to his co-stars and Sullivan -- reveals the scared boy behind Treat's brutish behavior.\",\"It's a shame that it took 30 years to bring this briskly entertaining, deeply affecting play to Broadway; but at least <i>Orphans<\\/i> has arrived in good hands.\"]}],\"byline\":\"by Elysa Gardner, USA TODAY\",\"copyright\":\"Copyright 2013 USATODAY.com\",\"dateline\":\"\",\"docId\":\"2090129\",\"docSourceId\":\"\",\"images\":[{\"image\":[{\"alternatetext\":\"\",\"caption\":\"Alec Baldwin stars as Harold in 'Orphans,' now playing on Broadway.\",\"credit\":\"Joan Marcus\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/17\\/2orphansv2-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Alec Baldwin stars as Harold in 'Orphans,' now playing on Broadway.\",\"credit\":\"Joan Marcus\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/17\\/2orphansv2-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Alec Baldwin stars as Harold in 'Orphans,' now playing on Broadway.\",\"credit\":\"Joan Marcus\",\"format\":\"large_16_9\",\"height\":\"1836\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/17\\/2orphansv2-16_9.jpg\",\"width\":\"3248\"}]}],\"lastUpdatedDate\":\"20130419T133006-0400\",\"mediaType\":\"document\",\"mobileUrl\":\"http:\\/\\/usat.ly\\/1733CDP\",\"publishedDate\":\"20130418T220000-0400\",\"shortUrl\":\"http:\\/\\/usat.ly\\/1763vYh\",\"source\":\"USATODAY\",\"ssts\":[{\"section\":\"life\"}],\"title\":\"'Orphans': Fierce, funny and moving\",\"url\":\"http:\\/\\/www.usatoday.com\\/story\\/life\\/2013\\/04\\/18\\/broadway-review-orphans\\/2090129\\/\",\"videos\":[]},{\"abstract\":\"New Richard Greenberg play follows Manhattan family with warmth and wit\",\"body\":[{\"p\":[\"NEW YORK -- In Act One of <i>The Assembled Parties<\\/i> (* * * out of four), we're introduced to a Manhattan family with, it seems, much to be grateful for. Ben, a successful, middle-aged lawyer, lives with his elegant wife, Julie, and their 4-year-old son, Timmy, in a 14-room apartment on Central Park West.  An older son, Scotty, has just graduated from a prestigious university.\",\"Their blessings are reinforced as they are joined, on Christmas Day in 1980, by Ben's sister, Faye, along with her less prosperous husband and mousy daughter; and by Scotty's college buddy, Jeff, who while equally bright and apparently more focused appears to lack his friend's confidence and poise.\",\"But appearances can be deceiving in Richard Greenberg's endearing new play, which opened Wednesday at the Samuel J. Friedman Theatre. By the time Act Two unfolds -- 20 years later, in the same apartment -- we have learned that these folks are all vulnerable to bad choices, the whims of fortune and the simple passing of time.\",\"That is <i>Parties<\\/i>' bittersweet lesson; and in this Manhattan Theatre Club production, it is reinforced with warmth and wit by a seasoned cast nimbly directed by Lynne Meadow and led by Jessica Hecht, Judith Light and Jeremy Shamos as, respectively, Julie, Faye and Jeff, the most prominent and vivid characters.\",\"Julie and Faye are established as foils early on. Both are members of the pre-Baby Boom generation, though Faye is slightly older; and like everyone else in <i>Parties<\\/i>, both are Jewish, a factor that gives them some sense of shared cultural identity. But Julie, a former teenage film star, adopts a vaguely flighty cheerfulness to avoid confrontation or painful introspection. She uses the word \\\"lovely\\\" a good deal.\",\"Faye, in contrast, makes sure that everyone knows how difficult her lot is with Mort and Shelley, sometimes embellishing her complaints with Yiddish. \\\"Do you want me to hate you the way everyone thinks I should?\\\" she asks Julie at one point.\",\"In fact, the women grow closer, and forge a common bond as mothers who want better things for their children, and themselves, even as they realize such fulfillment is elusive. Hecht's artfully quirky performance makes it clear that Julie is both sharper and sadder than she lets on, while Light mines the gutsy fortitude behind Faye's whining.\",\"Shamos, too, is funny and moving, tracing Jeff's journey from an insecure but ambitious young man to one who is wearier but perhaps more generous and, in his way, determined. When Timmy turns up in Act Two as Tim, a somewhat lost 24-year-old, Jeff compels him to accept and return his mother's affection -- though not before Julie, whose own days are now numbered, can express her concern.\",\"\\\"He's so unfinished,\\\" she says wistfully. \\\"I still have so much to do to him.\\\" Instead, her son will have to finish himself; and <i>Parties<\\/i> manages to find a certain comfort in that inevitability.\"]}],\"byline\":\"by Elysa Gardner, USA TODAY\",\"copyright\":\"Copyright 2013 USATODAY.com\",\"dateline\":\"\",\"docId\":\"2085891\",\"docSourceId\":\"\",\"images\":[{\"image\":[{\"alternatetext\":\"\",\"caption\":\"Jessica Hecht as Julie and Judith Light as Faye in 'The Assembled Parties.'\",\"credit\":\"Joan Marcus\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/17\\/1review-assembled-parties-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Jessica Hecht as Julie and Judith Light as Faye in 'The Assembled Parties.'\",\"credit\":\"Joan Marcus\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/17\\/1review-assembled-parties-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Jessica Hecht as Julie and Judith Light as Faye in 'The Assembled Parties.'\",\"credit\":\"Joan Marcus\",\"format\":\"large_16_9\",\"height\":\"1689\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/17\\/1review-assembled-parties-16_9.jpg\",\"width\":\"2991\"}]}],\"lastUpdatedDate\":\"20130418T161444-0400\",\"mediaType\":\"document\",\"mobileUrl\":\"http:\\/\\/usat.ly\\/106kBWJ\",\"publishedDate\":\"20130417T220000-0400\",\"shortUrl\":\"http:\\/\\/usat.ly\\/173TJG5\",\"source\":\"USATODAY\",\"ssts\":[{\"section\":\"life\"}],\"title\":\"'Parties' spans years, offers lessons\",\"url\":\"http:\\/\\/www.usatoday.com\\/story\\/life\\/2013\\/04\\/17\\/broadway-review-the-assembled-parties\\/2085891\\/\",\"videos\":[]},{\"abstract\":\"40 years later, the band reunites, via Steven Van Zandt, for a Broadway gig.\",\"body\":[{\"p\":[\"NEW YORK - It's an unlikely plot for a Broadway musical: A famous musician yearns to reunite the band he loved as a kid, and succeeds, bringing his heroes together for their first concert series in 40 years.\",\"Actually, that's just the story behind <i>The Rascals: Once Upon a Dream<\\/i> (*** out of four), which began a 15-performance run at the Richard Rodgers Theatre on Monday (and officially opened Tuesday). Renowned guitarist and sometime actor Steven Van Zandt,  who wrote, co-directed and co-produced <i>Dream<\\/i>, never appears in it. His name isn't even mentioned, though his longtime colleague Bruce Springsteen comes up briefly.\",\"But Van Zandt's reverence for The Rascals, shared by fellow artists and rock pundits, and his affection for the four men, who formed the New Jersey-based group in the early '60s, permeate the show.\",\"Those men are in their late 60s and 70s now, a fact that is hardly glossed over. Neither a jukebox musical nor a straightforward concert along the lines of  last fall's <i>Frankie Valli and the Four Seasons on Broadway<\\/i>, <i>Dream<\\/i> shifts from live performances to video clips, shown on a single large screen behind the band, in which the members - keyboardist\\/vocalist Felix Cavaliere, singer Eddie Brigati, drummer Dino Danelli and guitarist Gene Cornish - reminisce about their history together, and the people and events that informed it.\",\"Some of those events are re-enacted in cheeky video segments in which actors play the young Rascals, posing a sharp contrast to the lined faces we see when the musicians are talking. (Vincent Pastore, who appeared with Van Zandt in <i>The Sopranos<\\/i>, turns up as a narrator, embellishing their comments in a Noo Yawk accent that reinforces the band's regional, working-class roots.)\",\"Those lines fade, though, when the men pick up their instruments and sing. Supported by bassist\\/music director Mark Prentice, keyboardist Mark Alexander and a trio of backup vocalists, they run through beloved hits such as <i>You Better Run<\\/i>,<i> How Can I Be Sure<\\/i>, <i>Groovin'<\\/i>, <i>A Beautiful Morning<\\/i> and <i>People Got to Be Free<\\/i> with the playful zeal of children rediscovering a favorite old toy.\",\"Such tunes remind us of the unique niche that The Rascals occupied  as an American rock band whose soulful tunes drew heavily on R&B while rivaling the raw esprit of the groups who led the British invasion on the pop charts. Co-director and production designer Marc Brickman enhances the good vibes with a dizzying array of sensual psychedelic images, a number of them incorporating slinky dancing girls.\",\"The mood turns more sober toward the end, as Vietnam and the civil rights struggle are evoked. The actors cast as the younger Rascals return on screen to reassess, rather melodramatically, their split in the early '70s. \\\"We were innocent,\\\" intones Peter Evangelista, as Brigati.\",\"But then the music kicks in again, bringing the audience to its feet - and giving Van Zandt's unconventional love story the happy ending it deserves.\"]}],\"byline\":\"by Elysa Gardner, USA TODAY\",\"copyright\":\"Copyright 2013 USATODAY.com\",\"dateline\":\"\",\"docId\":\"2087251\",\"docSourceId\":\"\",\"images\":[{\"image\":[{\"alternatetext\":\"\",\"caption\":\"'Once Upon a Dream' features the real Rascals, actors as young Rascals, live performances and video clips.\",\"credit\":\"George Rodriguez\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/16\\/rascals-by-george-rodriguez-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"'Once Upon a Dream' features the real Rascals, actors as young Rascals, live performances and video clips.\",\"credit\":\"George Rodriguez\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/16\\/rascals-by-george-rodriguez-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"'Once Upon a Dream' features the real Rascals, actors as young Rascals, live performances and video clips.\",\"credit\":\"George Rodriguez\",\"format\":\"large_16_9\",\"height\":\"1713\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/16\\/rascals-by-george-rodriguez-16_9.jpg\",\"width\":\"3033\"}]}],\"lastUpdatedDate\":\"20130418T161451-0400\",\"mediaType\":\"document\",\"mobileUrl\":\"http:\\/\\/usat.ly\\/ZxD2wn\",\"publishedDate\":\"20130417T190855-0400\",\"shortUrl\":\"http:\\/\\/usat.ly\\/15nc8zK\",\"source\":\"USATODAY\",\"ssts\":[{\"section\":\"life\"}],\"title\":\"Rascals return in 'Once Upon a Dream'\",\"url\":\"http:\\/\\/www.usatoday.com\\/story\\/life\\/2013\\/04\\/17\\/broadway-rascals-once-upon-a-dream\\/2087251\\/\",\"videos\":[]},{\"abstract\":\"The Broadway fave is hilarious and heartbreaking in the new Douglas Carter Beane play.\",\"body\":[{\"p\":[\"NEW YORK - No living stage actor can make an audience laugh more adroitly than Nathan Lane. His wry line shadings, priceless expressions and expertly timed pauses have produced some of Broadway's funniest moments in recent decades.\",\"So it's happy news that Douglas Carter Beane's <i>The Nance <\\/i>( <b>* * *<\\/b> out of four), which opened Monday at the Lyceum Theatre, offers Lane the juiciest role that he has had since 2001's <i>The Producers<\\/i>. Here he's cast as Chauncey Miles, a burlesque performer who deals in naughty gags and racy double entendre and whose wit proves just as sharp, if more dry, offstage.\",\"But be warned: <i>Nance<\\/i> is no comic romp. The title refers to a stock character in the 1920s and '30s, who would affect effeminate mannerisms modeled on homosexual stereotypes. Most performers were heterosexual men; Chauncey is an exception.\",\"That means that in 1937, when the play is set, his dating options are limited by the prying eyes of police officers and other potential snoops. A proud, elegant man who claims to savor furtive encounters, Chauncey snickers about his dilemma but, on the surface, doesn't seem wounded by it.\",\"Then he meets Ned, a handsome, earnest young man who has just  left behind a loveless marriage in Buffalo. Chauncey discreetly takes him home, with no intention of having him stick around. But Ned is smitten - so much so that he turns down a prospective apartment to move in with Chauncey and finds work at the burlesque theater. His plain speech and artless good nature endear Ned to the troupers, who accept Chauncey and him as a couple.\",\"But the relationship is threatened by Chauncey's fears, not just of its inherent risks but of emotional commitment. His professional life also is increasingly under jeopardy as local officials begin to raid the theaters in search of performers they consider morally objectionable - nances, principally.\",\"After a lifetime avoiding conflict, Chauncey finds his courage tested as both an individual and a member of an oppressed community. Beane examines these struggles with grace and compassion; but as things unravel in Act Two, <i>Nance<\\/i> shifts into a more sustained minor key and loses some of its punch.\",\"The mood swing hardly fazes Lane, who is as heartbreaking in Chauncey's bleaker moments as he is hilarious in his burlesque routines. Under Jack O'Brien's vigorous direction, he has superb support from the invaluable Lewis J. Stadlen, as Chauncey's gruff performing partner, and from the musical actresses who play their colleagues - particularly Cady Huffman as a sassy redhead who clashes with Chauncey over politics. (She's a Communist; he's, ironically, a Republican.)\",\"Jonny Orsini is sweetly affecting as Ned, who challenges Chauncey to accept the love of another and, above all, himself. He is repaid in Chauncey's final monologue, a drag skit that turns darkly confessional, inspiring both giggles and tears.\",\"In that sequence, <i>Nance <\\/i>regains its equilibrium - and Lane reaffirms his status as one of the stage's brightest treasures.\"]}],\"byline\":\"by Elysa Gardner, USA TODAY\",\"copyright\":\"Copyright 2013 USATODAY.com\",\"dateline\":\"\",\"docId\":\"2077031\",\"docSourceId\":\"\",\"images\":[{\"image\":[{\"alternatetext\":\"\",\"caption\":\"Nathan Lane stars in 'The Nance,' performing at the Lyceum Theatre in New York.\",\"credit\":\"Joan Marcus, AP\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/15\\/ap-theater-the-nance-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Nathan Lane stars in 'The Nance,' performing at the Lyceum Theatre in New York.\",\"credit\":\"Joan Marcus, AP\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/15\\/ap-theater-the-nance-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Nathan Lane stars in 'The Nance,' performing at the Lyceum Theatre in New York.\",\"credit\":\"Joan Marcus, AP\",\"format\":\"large_16_9\",\"height\":\"1694\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/15\\/ap-theater-the-nance-16_9.jpg\",\"width\":\"3000\"}]}],\"lastUpdatedDate\":\"20130416T102733-0400\",\"mediaType\":\"document\",\"mobileUrl\":\"http:\\/\\/usat.ly\\/ZqPdew\",\"publishedDate\":\"20130415T220000-0400\",\"shortUrl\":\"http:\\/\\/usat.ly\\/105awJF\",\"source\":\"USATODAY\",\"ssts\":[{\"section\":\"life\"}],\"title\":\"Nathan Lane embraces 'The Nance'\",\"url\":\"http:\\/\\/www.usatoday.com\\/story\\/life\\/2013\\/04\\/15\\/broadway-review-the-nance\\/2077031\\/\",\"videos\":[]},{\"abstract\":\"Chet Walker brings beloved musical back to Broadway, \\\"in the style of\\\" mentor Bob Fosse\",\"body\":[{\"p\":[\"NEW YORK - Jazz hands. Cocked hips. Feet turning sharply inwards and out.\",\"It's the \\\"Manson trio,\\\" one of Bob Fosse's signature dance numbers, first introduced in the original production of <i>Pippin<\\/i> -- being faithfully recreated by Fosse protege Chet Walker, who appeared in that staging as a teenager and is now, more than 40 years later, choreographing the first (believe it or not) Broadway revival.\",\"On the stage of the Music Box Theatre, where the new <i>Pippin<\\/i> is currently in previews, Walker and his dance captain, Brad Musgrove, lead Patina Miller, Andrew Fitch and Anthony Wayne through their paces. Miller, a Tony Award nominee for 2011's <i>Sister Act<\\/i>, is cast in a role initiated in 1972 by Ben Vereen: the Leading Player, who in this very loose historical adaptation guides Pippin, the son of Charlemagne, and the audience on a journey of self-discovery.\",\"This key character's gender isn't the only change in this American Repertory Theater-based production, which opens April 25. Director Diane Paulus, whose previous high-profile revivals include last season's <i>The Gershwins' Porgy and Bess<\\/i> and 2009's acclaimed <i>Hair<\\/i>, took the creators' show-within-a-show format and added a circus element.\",\"\\\"It was a very long audition process,\\\" says Walker, 58, during a rehearsal break. \\\"Everyone in this show has to sing, dance and act, and pretty much everyone has some sort of acrobatic skill. We have seven circus performers who had to learn dance, and dancers who had to learn circus elements.\\\"\",\"Walker, who is credited in the program as working \\\"in the style of Bob Fosse,\\\" was keen to approach the project with both reverence -- the Manson trio, for instance, is reproduced step for step -- and the innovative spirit he cherished in his mentor, with whom he worked on such classics as <i>Sweet Charity<\\/i>, <i>The Pajama Game<\\/i> and <i>Dancin'<\\/i> before conceiving and choreographing 1999's Tony-winning tribute <i>Fosse<\\/i>.\",\"When Walker performed in <i>Pajama Game<\\/i>, in a 1973 revival, Fosse \\\"came over to look at it,\\\" he recalls, \\\"and the producers asked what he thought. And his response was, 'I have no idea what I was doing in 1954 -- but would you like me to try something new?' '\\\"\",\"Walker still refers to the man he first auditioned for as a barely post-adolescent \\\"geek\\\" as \\\"Mr. Fosse,\\\" noting, \\\"We weren't friends. I was in awe and sometimes in fear of him. I was always on the other side, watching him create.\\\" Still, he remembers Fosse as \\\"the most gallant man, a man with so much charisma -- and yet so much like a little boy in his enthusiasm. He truly loved his work, and that was infectious.\\\"\",\"Revisiting Roger O. Hirson's book for <i>Pippin<\\/i>, and Stephen Schwartz's beloved theatrical-pop score, has also been eye-opening for Walker. \\\"When I first did it, I was the youngest kid on Broadway, thinking, what am I supposed to be doing with my life? Nobody knew what to tell me. And along comes this musical about a young man, posing the same questions. Now that I'm much older, they still seem important and potent.\\\"\",\"Pippin \\\"learns by fire,\\\" Walker points out -- literally, in the show's finale. \\\"What Stephen and Roger and Mr. Fosse were saying is, we all make choices, and we're all responsible for those choices. So be careful what you wish for.\\\"\"]}],\"byline\":\"by Elysa Gardner USA TODAY, USA TODAY\",\"copyright\":\"Copyright 2013 USATODAY.com\",\"dateline\":\"\",\"docId\":\"2053579\",\"docSourceId\":\"\",\"images\":[{\"image\":[{\"alternatetext\":\"\",\"caption\":\"Chet Walker, Choreographer on the revival of the musical \\\"Pippin\\\" works with dancers Patina Miller, Andrew Fitch and Anthony Wayne at the Music Box Theatre in New York's Times Square on April 2, 2013.\",\"credit\":\"Todd Plitt ,USA TODAY\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/10\\/xxx-pippin-rehearsals-jy--1-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Chet Walker, Choreographer on the revival of the musical \\\"Pippin\\\" works with dancers Patina Miller, Andrew Fitch and Anthony Wayne at the Music Box Theatre in New York's Times Square on April 2, 2013.\",\"credit\":\"Todd Plitt ,USA TODAY\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/10\\/xxx-pippin-rehearsals-jy--1-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Chet Walker, Choreographer on the revival of the musical \\\"Pippin\\\" works with dancers Patina Miller, Andrew Fitch and Anthony Wayne at the Music Box Theatre in New York's Times Square on April 2, 2013.\",\"credit\":\"Todd Plitt ,USA TODAY\",\"format\":\"large_16_9\",\"height\":\"2260\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/10\\/xxx-pippin-rehearsals-jy--1-16_9.jpg\",\"width\":\"3999\"}]}],\"lastUpdatedDate\":\"20130416T102536-0400\",\"mediaType\":\"document\",\"mobileUrl\":\"http:\\/\\/usat.ly\\/17fpcGu\",\"publishedDate\":\"20130410T194932-0400\",\"shortUrl\":\"http:\\/\\/usat.ly\\/10LxthQ\",\"source\":\"USATODAY\",\"ssts\":[{\"section\":\"life\"}],\"title\":\"'Pippin' dances into the 21st century\",\"url\":\"http:\\/\\/www.usatoday.com\\/story\\/life\\/2013\\/04\\/10\\/broadway-pippin-preview\\/2053579\\/\",\"videos\":[{\"video\":[{\"mimetype\":\"video\",\"paramname\":\"@videoPlayer\",\"value\":\"2291870461001\",\"videospecification\":\"medium-topper\"}]}]},{\"abstract\":\"Acclaimed London transport wears both its cleverness and its heart on its sleeve.\",\"body\":[{\"p\":[\"NEW YORK - It's not a coincidence that musical theater reached its peak in this country in the 20th century. The English may have had an influence on the breezier musical comedies that dominated Broadway into the 1930s; but the form, as it developed, came to demand an emotional forthrightness that is, or was, more intrinsic to our culture. Smart will  get you only so far, even if you're Stephen Sondheim, whose works appeal openly to the heart as much as the mind.\",\"The U.K.-based <i>Matilda the Musical <\\/i>(***\xC2\xBD out of four stars), which opened Thursday at the Shubert Theatre, is the smartest musical to arrive on Broadway in years - and its creators never let you forget that. There's a distinctly British self-consciousness to acclaimed playwright Dennis Kelly and comedian\\/musician Tim Minchin's adaptation of Roald Dahl's beloved children's novel, a critical and commercial smash in London.\",\"But <i>Matilda<\\/i> is also affecting, and enchanting, in a way that homegrown hits of late haven't been. Even <i>The Book of Mormon<\\/i>, with its Rodgers and Hammerstein-inspired core of sweetness, gets so drunk on its own irony that it's impossible to fully engage with the characters. Kelly's libretto and Finchin's score, in addition to being wittier, convey a genuine affection for their 5-year-old heroine, and an interest in making her story resonate.\",\"That story can be unsettling: Matilda Wormwood, a child genius who develops telekinetic powers, has idiotic parents who constantly belittle her, and attends a school with a sadistic headmistress, Miss Trunchbull. Her teacher wants to nurture her intelligence but is thwarted at every turn. There's also a sympathetic librarian whom Matilda regales with darkly twisting tales that reflect her inner turmoil.\",\"Set and costume designer Rob Howell channels the fantastical and spooky aspects of Dahl's book with gorgeous whimsy. Colorful alphabet blocks, seemingly hundreds, hover over the stage, inviting us to discern clues. Mr. and Mrs. Wormwood, played with winningly cartoonish fiendishness by Gabriel Ebert and Lesli Margherita, are dressed accordingly, in garish hues; Bertie Carvel, repeating his Olivier Award-winning turn (in drag) as the headmistress, is just as sumptuously grotesque in an artfully distorted gray dress.\",\"At a recent matinee, the sweetly feisty Bailey Ryon, one of four young actresses cast as Matilda, proved a fine foil to these grown-up monsters. Under Matthew Warchus' playful but sensitive direction, the children playing her schoolmates - or fellow \\\"maggots,\\\" to Miss Trunchbull - emerge as flesh-and-blood creatures, even while managing the sharp, exaggerated gestures that fuel Peter Darling's invigorating choreography.\",\"If Minchin's wry melodies and lyrics sometimes try too hard to be clever - Sondheim would surely advise him that \\\"calculus\\\" and \\\"unmiraculous\\\" don't rhyme - they can also convey real wonder and longing, and are beautifully served by Chris Nightingale's robust but nuanced orchestrations.\",\"One senses that, however naturally skeptical, the team behind <i>Matilda<\\/i> was seduced by the heartfelt magic that Dahl - a Brit, by the way - brought to the page. Audiences will be as well.\"]}],\"byline\":\"by Elysa Gardner, USA TODAY\",\"copyright\":\"Copyright 2013 USATODAY.com\",\"dateline\":\"\",\"docId\":\"2063827\",\"docSourceId\":\"\",\"images\":[{\"image\":[{\"alternatetext\":\"\",\"caption\":\"Milly Shapiro, left, Sophia Gennusa, Oona Laurence and Bailey Ryon share the title role in 'Matilda the Musical.'\",\"credit\":\"Charles Sykes, Invision, via AP\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/11\\/4matilda-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Milly Shapiro, left, Sophia Gennusa, Oona Laurence and Bailey Ryon share the title role in 'Matilda the Musical.'\",\"credit\":\"Charles Sykes, Invision, via AP\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/11\\/4matilda-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Milly Shapiro, left, Sophia Gennusa, Oona Laurence and Bailey Ryon share the title role in 'Matilda the Musical.'\",\"credit\":\"Charles Sykes, Invision, via AP\",\"format\":\"large_16_9\",\"height\":\"2513\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/11\\/4matilda-16_9.jpg\",\"width\":\"4446\"},{\"alternatetext\":\"\",\"caption\":\"Bailey Ryon, Milly Shapiro, Sophia Gennusa and Oona Laurence on stage at the Shubert Theatre in New York.\",\"credit\":\"Joan Marcus, AP\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/11\\/2matilda-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Bailey Ryon, Milly Shapiro, Sophia Gennusa and Oona Laurence on stage at the Shubert Theatre in New York.\",\"credit\":\"Joan Marcus, AP\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/11\\/2matilda-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Bailey Ryon, Milly Shapiro, Sophia Gennusa and Oona Laurence on stage at the Shubert Theatre in New York.\",\"credit\":\"Joan Marcus, AP\",\"format\":\"large_16_9\",\"height\":\"1847\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/11\\/2matilda-16_9.jpg\",\"width\":\"3269\"},{\"alternatetext\":\"\",\"caption\":\"The cast of 'Matilda the Musical,' including Bertie Carvel, right, and Lauren Ward, left, during a performance in New York.\",\"credit\":\"Joan Marcus, AP\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/11\\/1matilda-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"The cast of 'Matilda the Musical,' including Bertie Carvel, right, and Lauren Ward, left, during a performance in New York.\",\"credit\":\"Joan Marcus, AP\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/11\\/1matilda-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"The cast of 'Matilda the Musical,' including Bertie Carvel, right, and Lauren Ward, left, during a performance in New York.\",\"credit\":\"Joan Marcus, AP\",\"format\":\"large_16_9\",\"height\":\"1693\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/11\\/1matilda-16_9.jpg\",\"width\":\"3000\"}]}],\"lastUpdatedDate\":\"20130412T132857-0400\",\"mediaType\":\"document\",\"mobileUrl\":\"http:\\/\\/usat.ly\\/XzwH9f\",\"publishedDate\":\"20130411T220000-0400\",\"shortUrl\":\"http:\\/\\/usat.ly\\/XFD7E3\",\"source\":\"USATODAY\",\"ssts\":[{\"section\":\"life\"}],\"title\":\"Musical 'Matilda' marvelously magical\",\"url\":\"http:\\/\\/www.usatoday.com\\/story\\/life\\/2013\\/04\\/11\\/broadway-review-matilda-the-musical\\/2063827\\/\",\"videos\":[]},{\"abstract\":\"Curtain to drop on musical this Saturday after just 28 post-preview performances.\",\"body\":[{\"p\":[\"Neither some favorable notices nor the involvement of a noted pop musician were enough to save<i> Hands on a Hardbody<\\/i>. It was announced Monday that the new Broadway musical, which features a score co-written by Trey Anastasio of Phish fame, would give its final performance this Saturday, after 28 previews and 28 regular performances.\",\"The show, which was inspired by a 1997 film documentary film following Texans who compete to win a new truck, arrived in New York following a well-received run at the La Jolla Playhouse, where it premiered. Though some reviews were mixed, the songs that Anastasio co-wrote with Amanda Green earned  praise, as did performances in the ensemble cast, which includes film veteran Keith Carradine and Broadway favorite Hunter Foster.\",\"Though an official reason wasn't offered, <i>Hardbody<\\/i> has enjoyed less-than-spectacular grosses. For the week ending April 7, according to the Broadway League, it took in $240,040 - less than a third of what another new musical entry,<i> Kinky Boots,<\\/i> grossed.\"]}],\"byline\":\"by Elysa Gardner, USA TODAY\",\"copyright\":\"Copyright 2013 USATODAY.com\",\"dateline\":\"\",\"docId\":\"2065029\",\"docSourceId\":\"\",\"images\":[{\"image\":[{\"alternatetext\":\"\",\"caption\":\"Jay Armstrong Johnson and Allison Case star in 'Hands on a Hard Body,' which features songs co-written by Phish frontman Trey Anastasio.\",\"credit\":\"Chad Batka, Hartman Group, via  AP\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/03\\/21\\/hard-body-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Jay Armstrong Johnson and Allison Case star in 'Hands on a Hard Body,' which features songs co-written by Phish frontman Trey Anastasio.\",\"credit\":\"Chad Batka, Hartman Group, via  AP\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/03\\/21\\/hard-body-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Jay Armstrong Johnson and Allison Case star in 'Hands on a Hard Body,' which features songs co-written by Phish frontman Trey Anastasio.\",\"credit\":\"Chad Batka, Hartman Group, via  AP\",\"format\":\"large_16_9\",\"height\":\"1446\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/03\\/21\\/hard-body-16_9.jpg\",\"width\":\"2561\"}]}],\"lastUpdatedDate\":\"20130416T142128-0400\",\"mediaType\":\"document\",\"mobileUrl\":\"http:\\/\\/usat.ly\\/XzYOp5\",\"publishedDate\":\"20130408T193920-0400\",\"shortUrl\":\"http:\\/\\/usat.ly\\/XzYOp3\",\"source\":\"USATODAY\",\"ssts\":[{\"section\":\"life\"}],\"title\":\"'Hardbody' to close on Broadway\",\"url\":\"http:\\/\\/www.usatoday.com\\/story\\/life\\/2013\\/04\\/08\\/hands-on-a-hardbody-to-close\\/2065029\\/\",\"videos\":[]},{\"abstract\":\"Nora Ephron's final play is a love song to old journalism, and to old New York.\",\"body\":[{\"p\":[\"NEW YORK - Leave it to Nora Ephron to write a play involving police brutality, cancer and one of the world's most famously cynical professions - and make it a romantic comedy.\",\"The hero of  her swan song, <i>Lucky Guy <\\/i>(* * * \xC2\xBD out of four), which opened Monday at Broadway's Broadhurst Theatre, dies at the end, as do other men; but that's a mere technicality. In tracing the colorful, controversial career of the late journalist Mike McAlary, Ephron - who lost her own battle with leukemia last year - left us a work that is, in its way, as buoyantly entertaining and uplifting as the thinking women's (and men's) chick flicks that made her one of the most successful screenwriters of the late 20th century.\",\"<i>Guy<\\/i>'s milieu is vastly different, and more testosterone-fueled, from that of <i>When Harry Met Sally<\\/i> or <i>Sleepless In Seattle<\\/i>, but it's one Ephron knew: In the 1960s, she worked as a reporter at the <i>New York Post<\\/i>, one of the tabloids where McAlary made his name two decades later.\",\"The play is, in fact, a valentine to that world, as it was then - before social media and the 24\\/7 news cycle - and the city that was so much a part of it. If there are tinges of sentimentality, director George C. Wolfe and a robust cast led by Tom Hanks, in his Broadway debut, keep the tone appropriately gritty and the pace vigorous.\",\"Ephron's dialogue requires the actors to verbally joust and parry with varying degrees of playfulness and aggression, as the characters, many of them sharing McAlary's vocation, endeavor to tell his story from their own perspectives. All aim to draw the audience in as they would a reader, often delivering their lines in boldface.\",\"Were the players less skilled, the effect might be hokey, or exhausting; but supple veterans such as Peter Gerety and Courtney B. Vance, as editors who champion and clash with McAlary, are at once credible and magnetic as they shift from heated interaction to animated asides.\",\"The actor whose name sits above the marquee proves equally adroit. McAlary, whose columns could be as unsparing on alleged crime victims as they were on rogue cops, made his share of professional and personal missteps; and Hanks shows us his capacity for arrogance and recklessness.\",\"But the actor also makes McAlary's human fallibility part of his appeal, bringing to the role a crustier version of the unmannered charm that made Hanks one of Hollywood's most likable leading men. That's a key asset here, as something like it surely helped McAlary form the regular-guy bonds that fed his biggest scoops.\",\"The real star of <i>Lucky Guy<\\/i>, though, is the Manhattan of Ephron's young adulthood, and McAlary's: a seedy, mystical place, however idealized, where men did battle in Google-free newsrooms and bonded after hours in smoke-filled bars.\",\"In the more sterile Times Square of 2013, that unlikely love story is a bracing tonic indeed.\"]}],\"byline\":\"by Elysa Gardner, USA TODAY\",\"copyright\":\"Copyright 2013 USATODAY.com\",\"dateline\":\"\",\"docId\":\"2035341\",\"docSourceId\":\"\",\"images\":[{\"image\":[{\"alternatetext\":\"\",\"caption\":\"Tom Hanks as Mike McAlary in a scene from the play \\\"Lucky Guy\\\" by Nora Ephron.\",\"credit\":\"Joan Marcus\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/01\\/2lucky-guy-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Tom Hanks as Mike McAlary in a scene from the play \\\"Lucky Guy\\\" by Nora Ephron.\",\"credit\":\"Joan Marcus\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/01\\/2lucky-guy-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Tom Hanks as Mike McAlary in a scene from the play \\\"Lucky Guy\\\" by Nora Ephron.\",\"credit\":\"Joan Marcus\",\"format\":\"large_16_9\",\"height\":\"1488\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/01\\/2lucky-guy-16_9.jpg\",\"width\":\"2640\"},{\"alternatetext\":\"\",\"caption\":\"Tom Hanks as Mike McAlary in a scene from the play \\\"Lucky Guy\\\" by Norah Ephron.\",\"credit\":\"Joan Marcus\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/01\\/1lucky-guy-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Tom Hanks as Mike McAlary in a scene from the play \\\"Lucky Guy\\\" by Norah Ephron.\",\"credit\":\"Joan Marcus\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/01\\/1lucky-guy-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Tom Hanks as Mike McAlary in a scene from the play \\\"Lucky Guy\\\" by Norah Ephron.\",\"credit\":\"Joan Marcus\",\"format\":\"large_16_9\",\"height\":\"2005\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/01\\/1lucky-guy-16_9.jpg\",\"width\":\"3531\"},{\"alternatetext\":\"\",\"caption\":\"Tom Hanks as Mike McAlary and Courtney B. Vance in a scene from the play \\\"Lucky Guy\\\" by Norah Ephron.\",\"credit\":\"Joan Marcus\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/01\\/3lucky-guy-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Tom Hanks as Mike McAlary and Courtney B. Vance in a scene from the play \\\"Lucky Guy\\\" by Norah Ephron.\",\"credit\":\"Joan Marcus\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/01\\/3lucky-guy-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Tom Hanks as Mike McAlary and Courtney B. Vance in a scene from the play \\\"Lucky Guy\\\" by Norah Ephron.\",\"credit\":\"Joan Marcus\",\"format\":\"large_16_9\",\"height\":\"2685\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/01\\/3lucky-guy-16_9.jpg\",\"width\":\"4746\"}]}],\"lastUpdatedDate\":\"20130408T112439-0400\",\"mediaType\":\"document\",\"mobileUrl\":\"http:\\/\\/usat.ly\\/114HS8T\",\"publishedDate\":\"20130401T220000-0400\",\"shortUrl\":\"http:\\/\\/usat.ly\\/10rFQMk\",\"source\":\"USATODAY\",\"ssts\":[{\"section\":\"life\"}],\"title\":\"Tom Hanks is Broadway's 'Lucky Guy'\",\"url\":\"http:\\/\\/www.usatoday.com\\/story\\/life\\/2013\\/04\\/01\\/lucky-guy-broadway-review\\/2035341\\/\",\"videos\":[]},{\"abstract\":\"Sutton Foster, Jesse Tyler Ferguson will do the honors April 30.\",\"body\":[{\"p\":[\"Two performers familiar to fans of Broadway musicals -- as well as a pair of fondly regarded TV series -- are set to co-host the announcement of this year's Tony Award nominations.\",\"USA TODAY has learned that two-time Tony Award winner and <i>Bunheads<\\/i> star Sutton Foster and <i>Modern Family<\\/i>'s Jesse Tyler Ferguson -- who appeared on the Great White Way in the 2005 hit <i>The 25th Annual Putnam County Spelling Bee<\\/i> and a 1998 revival of <i>On the Town<\\/i> -- will share the duties on the morning of April 30, at an event that will be broadcast live from the New York Library for the Performing Arts at Lincoln Center on CBS This Morning and at <a href=\\\"http:\\/\\/www.tonyawards.com\\/en_US\\/index.html\\\">TonyAwards.com<\\/a>.\",\"Foster says she was \\\"definitely surprised and delighted to be asked\\\" to serve as co-host. \\\"I'm excited to be back in New York, and to celebrate all of the shows and performances of this season.\\\"\",\"This year's Tony Awards will air live from New York's Radio City Music Hall on CBS on Sunday, June 9.\"]}],\"byline\":\"by Elysa Gardner, USA TODAY\",\"copyright\":\"Copyright 2013 USATODAY.com\",\"dateline\":\"\",\"docId\":\"2040663\",\"docSourceId\":\"\",\"images\":[{\"image\":[{\"alternatetext\":\"\",\"caption\":\"Jesse Tyler Ferguson stars on TV's 'Modern Family.'\",\"credit\":\"Bob Charlotte, PR Photos\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/GenericImages\\/2013\\/03\\/31\\/jesse-tyler-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Jesse Tyler Ferguson stars on TV's 'Modern Family.'\",\"credit\":\"Bob Charlotte, PR Photos\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/GenericImages\\/2013\\/03\\/31\\/jesse-tyler-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Jesse Tyler Ferguson stars on TV's 'Modern Family.'\",\"credit\":\"Bob Charlotte, PR Photos\",\"format\":\"large_16_9\",\"height\":\"225\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/GenericImages\\/2013\\/03\\/31\\/jesse-tyler-16_9.jpg\",\"width\":\"398\"},{\"alternatetext\":\"\",\"caption\":\"Sutton Foster is a star of 'Bunheads.'\",\"credit\":\"Donna Ward, PR Photos\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/GenericImages\\/2013\\/03\\/31\\/sutton-foster-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Sutton Foster is a star of 'Bunheads.'\",\"credit\":\"Donna Ward, PR Photos\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/GenericImages\\/2013\\/03\\/31\\/sutton-foster-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Sutton Foster is a star of 'Bunheads.'\",\"credit\":\"Donna Ward, PR Photos\",\"format\":\"large_16_9\",\"height\":\"193\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/GenericImages\\/2013\\/03\\/31\\/sutton-foster-16_9.jpg\",\"width\":\"342\"}]}],\"lastUpdatedDate\":\"20130416T142204-0400\",\"mediaType\":\"document\",\"mobileUrl\":\"http:\\/\\/usat.ly\\/10qmKq0\",\"publishedDate\":\"20130401T000000-0400\",\"shortUrl\":\"http:\\/\\/usat.ly\\/118YnB4\",\"source\":\"USATODAY\",\"ssts\":[{\"section\":\"life\",\"subsection\":\"people\"}],\"title\":\"Stars set to co-host Tony nominees\",\"url\":\"http:\\/\\/www.usatoday.com\\/story\\/life\\/people\\/2013\\/04\\/01\\/broadway-and-tv-stars-to-announce-tony-nominations\\/2040663\\/\",\"videos\":[]},{\"abstract\":\"The Harvey Fierstein\\/Cyndi Lauper musical has a frisky spirit and a tender heart.\",\"body\":[{\"p\":[\"Toward the end of Act One of <i>Kinky Boots<\\/i> (* * * out of four), the marvelous Billy Porter, playing a cross-dressing man who calls himself Lola, does something almost revolutionary for a contemporary Broadway musical.\",\"It has nothing to do with the character's chosen name, or that he likes to flounce around in skirts and mascara. No, Porter's act of subversion is to sing a big, emotional ballad called <i>I'm Not My Father's Son<\\/i>. It's the kind of tune that many of his peers would bang over the audience's head, holding and bending and belting out notes until the crowd roared its approval.\",\"But Porter, whose Lola wears a subdued man's suit while revealing the harsh experience and enduring self-doubt behind his flamboyant persona, actually <i>sings<\\/i> it, with the carefully modulated expressiveness of someone sharing his pain, rather than merely projecting it.\",\"The song isn't typical of this high-spirited new musical, which opened Thursday at the Al Hirschfeld Theatre. Porter and his fellow cast members -- who include a bevy of men decked out in the skimpy, glittering attire that Lola normally favors -- usually get to be more upbeat and less, well, reserved. <i>Boots<\\/i> boasts a libretto by Harvey Fierstein and a score by Cyndi Lauper -- hardly shy, brooding types.\",\"But Fierstein and Lauper share, in addition to a flair for exuberant showmanship, a gutsy candor that doesn't shrink from embarrassment or heartache -- or from extolling corny virtues like tolerance and self-esteem. It's that quality that makes <i>Kinky Boots<\\/i> rise above the cliches that threaten to trip it up.\",\"The story, based on a movie inspired by true events, centers on Lola's relationship with one Charlie Price, a straight-laced, rather joyless young Brit. Dragged by his upwardly mobile fiancee from Northampton to London, Charlie ends up back home after his father dies, leaving the family shoe factory in dire straits.\",\"Enter Lola, formerly Simon from Clacton, now holding court with his \\\"Angels\\\" at a London nightclub. After a chance meeting, Charlie resolves that he can rebuild the business catering to a niche market: drag queens. The fiancee thinks he's nuts, as do a few of his more macho employees; but Lola, who also carved out a life different than the one his dad envisioned, supports his plan. So does a cute working-class girl in the factory.\",\"What transpires is predictable, but <i>Boots<\\/i>, like its heroes, is buoyed by its irresistible gumption, and a good-natured wit that's expertly stoked by director\\/choreographer Jerry Mitchell. As Charlie, Stark Sands lacks both Porter's restraint and his verve -- his rock-flavored songs can have a strained, overzealous feel -- but his awkward sweetness serves the part well.\",\"The musical highlights are the more boisterous numbers, where Lauper imbues textures lifted from the Motown and disco eras with a sizzling theatricality that's bound to put a little more spring in your step and cheer in your heart. Even if you're just wearing flats.\"]}],\"byline\":\"by Elysa Gardner, USA TODAY\",\"copyright\":\"Copyright 2013 USATODAY.com\",\"dateline\":\"\",\"docId\":\"2043013\",\"docSourceId\":\"\",\"images\":[{\"image\":[{\"alternatetext\":\"\",\"caption\":\"Stark Sands, left, Annaleigh Ashford, and Billy Porter star in 'Kinky Boots.'\",\"credit\":\"Matthew Murphy\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/04\\/2kinky-boots-review-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Stark Sands, left, Annaleigh Ashford, and Billy Porter star in 'Kinky Boots.'\",\"credit\":\"Matthew Murphy\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/04\\/2kinky-boots-review-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Stark Sands, left, Annaleigh Ashford, and Billy Porter star in 'Kinky Boots.'\",\"credit\":\"Matthew Murphy\",\"format\":\"large_16_9\",\"height\":\"1693\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/04\\/2kinky-boots-review-16_9.jpg\",\"width\":\"3000\"},{\"alternatetext\":\"\",\"caption\":\"Stark Sands, left, Billy Porter, and Annaleigh Ashford (center) in a scene from the musical play \\\"Kinky Boots.\\\"\",\"credit\":\"Matthew Murphy\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/04\\/1kinky-boots-review-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Stark Sands, left, Billy Porter, and Annaleigh Ashford (center) in a scene from the musical play \\\"Kinky Boots.\\\"\",\"credit\":\"Matthew Murphy\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/04\\/1kinky-boots-review-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Stark Sands, left, Billy Porter, and Annaleigh Ashford (center) in a scene from the musical play \\\"Kinky Boots.\\\"\",\"credit\":\"Matthew Murphy\",\"format\":\"large_16_9\",\"height\":\"1693\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/04\\/04\\/1kinky-boots-review-16_9.jpg\",\"width\":\"3000\"}]}],\"lastUpdatedDate\":\"20130408T112236-0400\",\"mediaType\":\"document\",\"mobileUrl\":\"http:\\/\\/usat.ly\\/11cPmqD\",\"publishedDate\":\"20130404T220000-0400\",\"shortUrl\":\"http:\\/\\/usat.ly\\/17flOLw\",\"source\":\"USATODAY\",\"ssts\":[{\"section\":\"life\"}],\"title\":\"You'll take a shine to 'Kinky Boots'\",\"url\":\"http:\\/\\/www.usatoday.com\\/story\\/life\\/2013\\/04\\/04\\/kinky-boots-broadway-review\\/2043013\\/\",\"videos\":[]},{\"abstract\":\"Playwright Christopher Durang channels Chekhov with wit, whimsy and poignance.\",\"body\":[{\"p\":[\"NEW YORK -- Don't be deceived by the dazzling zaniness of <i>Vanya and Sonia and Masha and Spike<\\/i>. In Christopher Durang's hugely entertaining new play, which opened Thursday at Broadway's Golden Theatre, there's a perilously fine line between comedy and tragedy.\",\"And why shouldn't that be so? After all, three of the four title characters were named, by their late parents, after Chekhov roles; and few contemporary playwrights have proven as deft as Durang as mining both the absurdity and the dangers of human folly.\",\"That's not to say that Durang's <i>Vanya<\\/i> approaches the depth of <i>Uncle Vanya<\\/i> -- or <i>The Three Sisters<\\/i> or <i>The Seagull<\\/i>, to cite two of several other Chekhov classics that Durang alludes to here. But in its own deliciously madcap way, the new work offers some keen insights into the challenges and agonies of 21st-century life.\",\"Director Nicholas Martin, helming the same fine cast that introduced <i>Vanya<\\/i> last year -- first at McCarter Theatre, then at Lincoln Center -- fully serves the wit and whimsy of the text, which Durang has sharpened. David Hyde Pierce and Kristine Nielsen play Vanya and Sonia, two middle-aged siblings -- Sonia was adopted, as she will repeatedly remind us -- who still live together in their elegantly rustic childhood home.\",\"That house is now owned by another sister, Masha, a movie star who has supported, from afar, Vanya and Sonia's lifestyles, which seem focused on moping -- Vanya in that dry, deadpan manner in which Pierce excels, Sonia with a more melodramatic sense of self-pity, which the superb Nielsen captures to comic perfection.\",\"Their domestic tension is heightened when the pathologically self-absorbed Masha -- played to the hilt by a hilarious, and astonishingly well-preserved, Sigourney Weaver -- flits into town, accompanied by her latest, much younger beau. That would be Spike, an aspiring actor and full-fledged doofus whose vanity and cluelessness are vividly embodied by a frequently underdressed Billy Magnussen.\",\"There's also a neighborhood ingenue, Nina, portrayed with wry wonder by Genevieve Angelson, and a soothsaying housekeeper, fittingly named Cassandra, who keeps warning of impending doom.\",\"Despite Cassandra's dark premonitions -- and with a little help from her voodoo skills, with which actress Shalita Grant has great fun -- <i>Vanya<\\/i> ends on an upbeat, even uplifting note. Mind you, that's only after the three central characters have had moments of painful self-awareness -- some quite humorous, but all poignant in their fashion.\",\"Vanya's meltdown provides the emotional climax. In a desperately nostalgic, mordantly funny rant, he laments the lack of true community in a culture that is, technologically speaking, increasingly connected. \\\"I'm worried about the future,\\\" he admits.\",\"We all should be, Durang seems to tell us -- but not so much so that we reject it. \\\"You must always get your hopes up,\\\" Nina says near the end; and that, for all of <i>Vanya'<\\/i>s exhilarating irony, is its ultimate, unironic message.\"]}],\"byline\":\"by Elysa Gardner, USA TODAY\",\"copyright\":\"Copyright 2013 USATODAY.com\",\"dateline\":\"\",\"docId\":\"1984707\",\"docSourceId\":\"\",\"images\":[{\"image\":[{\"alternatetext\":\"\",\"caption\":\"Billy Magnussen, left, Kristine Nielsen, Sigourney Weaver, Genevieve Angelson, and David Hyde Pierce in the Broadway play \\\"Vanya and Sonia and Masha and Spike.\\\"\",\"credit\":\"Carol Rosegg\",\"format\":\"large_4_3\",\"height\":\"1536\",\"imagespecification\":\"community-wide-extralarge\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/03\\/14\\/vanya-sonia-masha-spike-x-superlarge.jpg\",\"width\":\"2048\"},{\"alternatetext\":\"\",\"caption\":\"Billy Magnussen, left, Kristine Nielsen, Sigourney Weaver, Genevieve Angelson, and David Hyde Pierce in the Broadway play \\\"Vanya and Sonia and Masha and Spike.\\\"\",\"credit\":\"Carol Rosegg\",\"format\":\"thumb\",\"height\":\"184\",\"imagespecification\":\"community-wide\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/03\\/14\\/vanya-sonia-masha-spike-x.jpg\",\"width\":\"245\"},{\"alternatetext\":\"\",\"caption\":\"Billy Magnussen, left, Kristine Nielsen, Sigourney Weaver, Genevieve Angelson, and David Hyde Pierce in the Broadway play \\\"Vanya and Sonia and Masha and Spike.\\\"\",\"credit\":\"Carol Rosegg\",\"format\":\"large_16_9\",\"height\":\"3164\",\"imagespecification\":\"16:9\",\"mimetype\":\"image\\/jpeg\",\"source\":\"http:\\/\\/www.gannett-cdn.com\\/media\\/USATODAY\\/USATODAY\\/2013\\/03\\/14\\/vanya-sonia-masha-spike-16_9.jpg\",\"width\":\"5593\"}]}],\"lastUpdatedDate\":\"20130329T173553-0400\",\"mediaType\":\"document\",\"mobileUrl\":\"http:\\/\\/usat.ly\\/XIWmdP\",\"publishedDate\":\"20130314T220000-0400\",\"shortUrl\":\"http:\\/\\/usat.ly\\/ZKHPfM\",\"source\":\"USATODAY\",\"ssts\":[{\"section\":\"life\"}],\"title\":\"A wild, winning ride with 'Vanya...'\",\"url\":\"http:\\/\\/www.usatoday.com\\/story\\/life\\/2013\\/03\\/14\\/vanya-and-sonia-broadway-review\\/1984707\\/\",\"videos\":[]}]}]}]}
JSON

GANNETT_ARTICLES_2 = <<-JSON
{
    "attributes": {
        "site": "1",
        "api": "v1",
        "front": "Home_Tablet",
        "layout": "Tablet",
        "aws": "homepage"
    },
    "modules": {
        "Items": {
            "attributes": {
                "name": "Content List",
                "displayName": "Items",
                "position": "0"
            },
            "content": [
                {
                    "body": [
                        {
                            "type": "text",
                            "value": "CUPERTINO, Calif. — Whatever you think of it — and everybody and their brother seems to have an opinion — no single product in all of tech gets the laser focus on it quite like the iPhone. Leading up to Tuesday's announcement of two brand new models — the iPhone 5C and the 5S, both coming Sept 18 — there was the usual speculation of what Apple's newest hardware would be and what it would have."
                        },
                        {
                            "type": "asset",
                            "value": "2794101"
                        },
                        {
                            "type": "text",
                            "value": "It turns out the rumor mill gets it more right than wrong, though anyone clamoring for a revamped Apple TV box (much less an actual flat screen), or a new iPad, or a smartwatch will have to wait at least until the next time Apple invites the media to the west coast."
                        },
                        {
                            "type": "text",
                            "value": "Where does that leave us? Over the coming days I plan to test the new iPhones to address what remains the biggest of all the questions: Are either of the new devices worth upgrading if you're already in the iPhone camp? Is it worth switching if you're an Android devotee or a have a Windows Phone or BlackBerry?"
                        },
                        {
                            "type": "asset",
                            "value": "2794605"
                        },
                        {
                            "type": "text",
                            "value": "Such questions get answered soon enough, but I leave Apple's campus with a favorable first impression, if not bowled over by any one thing. Based on today's announcements, I'm especially eager to try the 5S."
                        },
                        {
                            "type": "text",
                            "value": "Start with the long rumored fingerprint authentication, which comes to the new 5S in a so-called Touch ID capacitative sensor that is built into the home button. You now have the option to to unlock your phone with your fingerprint. Apple CEO Tim Cook said that only half of today's customers actually use passcode features on their current devices, which is unfortunate. I'm one of those people who does use a passcode, though sometimes admittedly it is a pain."
                        },
                        {
                            "type": "text",
                            "value": "To me, using your fingerprint in lieu of a passcode is kind of cool but the more interesting  innovation here, I think, is that you can use your digits to authorize your purchases in iTunes. There are still questions: notably what happens if you cut your finger or are wearing gloves? I suppose you can still always unlock your phone the old fashioned way."
                        },
                        {
                            "type": "text",
                            "value": "So much of the smartphone battleground these days is, forgive the pun, focused on photography, rather than on the quality of voice calls or other features, not that those don't remain incredibly crucial.  Nokia for example sells a Lumia model with 41 megapixels, and HTC and Samsung, among others, flaunt a bevy of camera tricks. To Apple it's more about larger pixels, 8 in this case, rather than having more of them. And the 5S adds an improved flash, auto image stabilization, burst mode (up to 10 per second), slow motion and other features it says will lead to superior pictures. I will reserve judgment until I've snapped my own photos, but the new hardware should mesh well with photo improvements built into the new iOS 7 operating system."
                        },
                        {
                            "type": "text",
                            "value": "Inside the 5S is a new Apple-designed A7 chip that the company says is twice as fast as its immediate predecessor and delivers CPU performance that is 40 times that of the original iPhone. That all sounds good on a specs sheet but what does it mean to you and me? For starters expect more realistic gameplay. But over time developers ought to be able to take advantage of the 64-bit architecture to build more functionality into apps."
                        },
                        {
                            "type": "text",
                            "value": "The big innovation in the 5C — if you can call it that — is color. It comes in blue, white, yellow, pink or green, which look pretty but don't make a technological statement. Still, I expect it to be a perfectly good phone.  For its part, the 5S, which Apple exec Phil Schiller called the \"gold standard (though made of high grade aluminum), comes in gold, silver or \"space gray.\""
                        },
                        {
                            "type": "text",
                            "value": "As for the 5C, despite some of the quips that are out there, the \"C\" in the 5C does not stand for \"cheap.\" That said, I do think many consumers will be attracted to the $99 starting price with a contract."
                        },
                        {
                            "type": "text",
                            "value": "Phone enthusiasts are more likely to gravitate to the higher end 5S, which costs $199, $299 and $399 for 16 GB, 32 GB and 64GB, respectively with a contract —not counting the extra you can spend to dress it up in a leather cases."
                        },
                        {
                            "type": "text",
                            "value": "Those who really want an inexpensive iPhone might be able to get the 4S , which remains in the lineup for free, well, free that is with the usual contractual obligations. After all, you can load it with iOS 7 and pretend you got a new phone."
                        },
                        {
                            "type": "text",
                            "value": "Indeed, for all the attention paid to hardware, today's festivities suggest that the new iPhone is more about the iOS7 operating system running inside. Apple first announced iOS7 three months ago at its World Wide Developers Conference in June, and whether you want a new iPhone or not, you can download iOS7 for free starting Sept 18."
                        },
                        {
                            "type": "text",
                            "value": "The edge-to-edge design changes the aesthetic of the iPhone way more dramatically than any of the versions that came before it and brings 200 new features, Apple says. The company has redrawn the fonts and graphics to the point where iOS on the surface may appear unrecognizable. But take a closer look and you'll find the software is more familiar than you might first suspect, with a learning curve likely not to be all that steep. Still, even the smallest of changes scares people and you can expect the usual outcry from them."
                        },
                        {
                            "type": "text",
                            "value": "Meanwhile, any huge surprises will have to wait at least until the next Apple event, rumored to take place next month."
                        },
                        {
                            "type": "text",
                            "value": "Follow Ed Baig on Twitter: @edbaig."
                        }
                    ],
                    "id": 2793065,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Baig: Fresh iPhone colors, fingerprint tech are cool; is it enough?",
                        "shortHeadline": "Baig: Is Apple's fresh touch on iPhone enough?",
                        "byline": "Edward C. Baig, USA TODAY",
                        "editedHeadline": "Baig: Is Apple's fresh touch on iPhone enough?",
                        "storyabstract": "CUPERTINO, Calif. — Whatever you think of it — and everybody and their brother seems to have an opinion — no single product in all of tech gets the laser focus on it quite like the iPhone. Leading up to Tuesday's announcement of two brand new models — the iPhone 5C and the 5S, both coming Sept 18 — there was the usual speculation of what Apple's newest hardware would be and what it would have. It turns out the rumor mill gets it more right than wrong, though anyone clamoring for a revamped Apple TV box (much less an actual flat screen), or a new iPad, or a smartwatch will have to wait at least until the next time Apple invites the media to the west coast.",
                        "brief": "Find out if it's worth upgrading to the new 5S or 5C.",
                        "storyhighlights": null,
                        "dates": {
                            "embargodate": "2013-09-10T16:17:56.654-04:00",
                            "feeddateline": "2013-09-10T16:17:56.654-04:00",
                            "published": "2013-09-10T19:32:13Z",
                            "lastupdated": "2013-09-10T20:17:57Z"
                        },
                        "ssts": {
                            "section": "tech",
                            "subsection": "columnist",
                            "topic": "baig",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/tech/columnist/baig/2013/09/10/apple-iphone-ios7-first-impressions/2793065/",
                            "shorturl": "http://usat.ly/17O57Ye",
                            "mobileurl": "http://usat.ly/17O57Ye"
                        },
                        "firstAsset": 2794605,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "tech",
                        "topic": "edward-c-baig"
                    },
                    "assets": [
                        {
                            "id": 2794101,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "1332",
                                    "oImageWidth": "2400",
                                    "sImageHeight": "277",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Apple",
                                    "alternate": null,
                                    "title": "iPhone5s_PF_3UP_HERO_PRINT",
                                    "caption": "The new iPhone 5S.",
                                    "datephototaken": null,
                                    "cutline": "The new iPhone 5S.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "iPhone5s_PF_3UP_HERO_PRINT.jpg",
                                    "imgIndex": "1378837375000",
                                    "imgUniqueName": "1378837375000-iPhone5s-PF-3UP-HERO-PRINT.jpg",
                                    "isImageVisitedByUser": "False",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378837375000-iPhone5s-PF-3UP-HERO-PRINT.jpg",
                                    "smallbasename": "/-mm-/1121da4f1cb237492c4eb04ddbe29477fcca23e9/r=500x277/local/-/media/USATODAY/test/2013/09/10/1378837375000-iPhone5s-PF-3UP-HERO-PRINT.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378837375000-iPhone5s-PF-3UP-HERO-PRINT.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/6381a16f19bc7f90cd80da24421b1f0481c3ad40/ttl=120/local/-/media/USATODAY/test/2013/09/10/1378837375000-iPhone5s-PF-3UP-HERO-PRINT.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/3f0f8732dd09e0323f13e02e7bd2b8e5ef94c354/c=316-0-2083-1332/local/-/media/USATODAY/test/2013/09/10/1378837375000-iPhone5s-PF-3UP-HERO-PRINT.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/458844cb5d48c8ec8428d335023015fdce67efde/c=700-0-1699-1332/local/-/media/USATODAY/test/2013/09/10/1378837375000-iPhone5s-PF-3UP-HERO-PRINT.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/ce008a1034c86f66fc75d3c2cf2aa9a937f21727/c=24-0-2376-1332/local/-/media/USATODAY/test/2013/09/10/1378837375000-iPhone5s-PF-3UP-HERO-PRINT.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/9e703162d5b88a4ce18dc1f279af8b22fa574620/c=830-0-1574-1332/local/-/media/USATODAY/test/2013/09/10/1378837375000-iPhone5s-PF-3UP-HERO-PRINT.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/2e4f02c0222f64023088fd76bbbbe415e7a87650/c=422-0-1977-1332/local/-/media/USATODAY/test/2013/09/10/1378837375000-iPhone5s-PF-3UP-HERO-PRINT.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2794605,
                            "position": 2,
                            "type": "video",
                            "status": "published",
                            "url": "http://www.usatoday.com/videos/tech/personal/2013/09/10/2794605/",
                            "mobileUrl": "http://usat.ly/1fWkdMc",
                            "ssts": {
                                "section": "tech",
                                "subsection": "personal",
                                "topic": "",
                                "subtopic": "",
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "brightcoveid": "2662970537001",
                                    "name": "Apple introduces 2 new iPhone models",
                                    "shortdescription": "Apple's latest iPhones will come in a bevy of colors and two distinct designs, a cheaper one made of plastic and another that aims to be \"the gold standard of smartphones\" and reads your fingerprint. (Sept. 10)",
                                    "tags": "consumer electronics,technology,national,Mobile phones,business",
                                    "source": "AP",
                                    "origin": "AP",
                                    "autoarchive": "true",
                                    "adsenabled": "True",
                                    "startdate": null,
                                    "enddate": null,
                                    "gannetttracking": "urn:publicid:ap.org:672e860f60f241baa48d8df9bf24210e",
                                    "longdescription": null,
                                    "viraldistribution": "true",
                                    "user": "mafowler",
                                    "datecreated": "9/10/2013 3:31:43 PM",
                                    "credit": "AP",
                                    "propertyid": "1",
                                    "brightcoveaccount": "29906170001",
                                    "thumbnail": "http://videos.usatoday.net/Brightcove2/29906170001/2013/09/29906170001_2663084498001_thumb-04e88b848d9f031e3d0f4a504700889f.jpg?pubId=29906170001",
                                    "videostill": "http://videos.usatoday.net/Brightcove2/29906170001/2013/09/29906170001_2663084498001_thumb-04e88b848d9f031e3d0f4a504700889f.jpg?pubId=29906170001",
                                    "status": "complete",
                                    "length": "01:22",
                                    "excludemobile": "False",
                                    "excluderightnow": "False",
                                    "majorchange": "False",
                                    "content-protection-state": "free",
                                    "lastaction": "Published",
                                    "interactive": "false",
                                    "topic": "tech",
                                    "aws": "tech/products"
                                },
                                "crops": null,
                                "document": null
                            }
                        },
                        {
                            "id": 2793489,
                            "position": 3,
                            "type": "gallery",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": "tech",
                                "subsection": "",
                                "topic": "",
                                "subtopic": "",
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "name": "Apple introduces new iPhones, iOS7 operating system",
                                    "thumbnailPath": "/-mm-/d782962e79a7e54a939e5e2a3e926061d87d6a79/r=500x376/local/-/media/USATODAY/USATODAY/2013/09/10/1378837765000-apple091013-025.jpg",
                                    "thumbnailAssetId": "2794155",
                                    "thumbnailLock": "True",
                                    "gallerySstsPublishLocation": "tech",
                                    "suppressVideoPreroll": "False",
                                    "galleryType": "Standard",
                                    "seoName": "apple-introduces-new-iphones-ios7-operating-system",
                                    "excludemobile": "False",
                                    "noadvertising": "False",
                                    "lastaction": "Published",
                                    "content-protection-state": "free",
                                    "editor": "mtsukamo",
                                    "thumbnailTiny": "/-mm-/8b72f3d1e8b2bb4404452cf14d3570e3ca4fb21e/c=0-36-2000-1544&r=115x86/local/-/media/USATODAY/USATODAY/2013/09/10/1378837765000-apple091013-025.jpg",
                                    "slidecount": "24",
                                    "interactive": "false",
                                    "topic": "tech_personal-tech,money_business",
                                    "aws": "tech"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/55b1a9c5789b865eb7b1c421edcb0244866b1e3a/c=352-8-1709-1367/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/625dfdde464eba0cf07059c0ad20819eab740211/c=118-4-1931-1367/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/9202db06a4cfe26a51c08b913abd7a91a33ceb9c/c=512-16-1525-1367/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/33865f412275c64405c0d753052530e7d4edbcaf/c=28-164-2050-1305/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/ac4dc5f63e5b0d1bca1cf111d23a26b8f579690d/c=643-0-1406-1367/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/5d3a47498cd77eaa87acd5924c0f42cb621c7cb6/c=225-0-1824-1367/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "text",
                            "value": "As President Obama prepared to address the nation Tuesday night, a Russian proposal that Syria place its chemical arms under international control triggered a flurry of diplomatic moves. Here's what you need to know:"
                        },
                        {
                            "type": "asset",
                            "value": "2792321"
                        },
                        {
                            "type": "text",
                            "value": "• Syria Foreign Minister Walid Muallem said Damascus is ready to sign an international agreement banning chemical weapons and pledged to open its storage sites and provide full disclosure immediately."
                        },
                        {
                            "type": "text",
                            "value": "• Syria is one of only five countries — including North Korea, Angola, Egypt and South Sudan — that has not signed the Chemical Weapons Convention that was drawn up in 1993."
                        },
                        {
                            "type": "text",
                            "value": "• Obama spoke with the leaders of France and the United Kingdom and agreed to explore the Russian proposal, senior White House officials said."
                        },
                        {
                            "type": "text",
                            "value": "• Secretary of State John Kerry and Defense Secretary Chuck Hagel, testifying before a House committee, expressed cautious support for the Russian proposal, but said it must not be used as a diplomatic stalling tactic."
                        },
                        {
                            "type": "text",
                            "value": "• Russian President Vladimir Putin said any agreement over Syria would work only if the United States and its allies renounce the use of force against Damascus."
                        },
                        {
                            "type": "text",
                            "value": "• The Arab League said it backs the Russian proposal."
                        },
                        {
                            "type": "text",
                            "value": "• France said it would put a resolution before the United Nations Security Council appealing to Syria to make public details of its chemical weapons program. Putin said he opposed the language of the French proposed resolution to the U.N. Security Council."
                        }
                    ],
                    "id": 2794549,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Syria: 7 latest developments you need to know",
                        "shortHeadline": "7 latest developments in Syria",
                        "byline": "Doug Stanglin and Alia E. Dastagir, USA TODAY",
                        "editedHeadline": null,
                        "storyabstract": "As President Obama prepared to address the nation Tuesday night, a Russian proposal that Syria place its chemical arms under international control triggered a flurry of diplomatic moves. Here's what you need to know: • Syria Foreign Minister Walid Muallem said Damascus is ready to sign an international agreement banning chemical weapons and pledged to open its storage sites and provide full disclosure immediately. • Syria is one of only five countries — including North Korea, Angola, Egypt and South Sudan — that has not signed the Chemical Weapons Convention that was drawn up in 1993. • Obama spoke with the leaders of France and the United Kingdom and agreed to explore the Russian proposal, senior White House officials said.",
                        "brief": "What you need to know today about the crisis in Syria.",
                        "storyhighlights": null,
                        "dates": {
                            "embargodate": "2013-09-10T16:28:54.369-04:00",
                            "feeddateline": "2013-09-10T16:28:54.369-04:00",
                            "published": "2013-09-10T20:12:15Z",
                            "lastupdated": "2013-09-10T20:28:55Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "world",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/world/2013/09/10/syria-latest-developments/2794549/",
                            "shorturl": "http://usat.ly/1fWexly",
                            "mobileurl": "http://usat.ly/1fWexly"
                        },
                        "firstAsset": 2792321,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "news/world",
                        "topic": "syria-conflict"
                    },
                    "assets": [
                        {
                            "id": 2792321,
                            "position": 2,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "2054",
                                    "oImageWidth": "3000",
                                    "sImageHeight": "342",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Mandel Ngan, AFP/Getty Images",
                                    "alternate": null,
                                    "title": "House Armed Services hearing",
                                    "caption": "Secretary of State John Kerry, left, and Defense Secretary Chuck Hagel appear Sept. 10 before the House Armed Services Committee.",
                                    "datephototaken": "9-10-2013",
                                    "cutline": "Secretary of State John Kerry, left, and Defense Secretary Chuck Hagel appear Sept. 10 before the House Armed Services Committee.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AFP 522750344.jpg",
                                    "imgIndex": "1378825937000",
                                    "imgUniqueName": "1378825937000-AFP-522750344.jpg",
                                    "isImageVisitedByUser": "False",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "smallbasename": "/-mm-/c5e135f39b641a320291b60d64758ac5b28be685/r=500x342/local/-/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "keywords": "syria conflict",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/9de121be3348264339da0845b990284390b3e1d0/c=474-0-2526-2054/local/-/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/42b968d84de92132a333feb865710444dc53c17b/c=138-0-2868-2054/local/-/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/39f43bf32cf7ebc31c9aa1ddb6f009593b9b846e/c=732-0-2274-2054/local/-/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/8675828afc5d1296823dca6b13d355a586649962/c=0-174-3000-1867/local/-/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/a4fd80630dfa6d2dd496d16404a936f9c98f012f/c=924-0-2076-2054/local/-/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/5bc5a9cbe6a88ee71efae6d00507f0a00b98a9b3/c=300-0-2700-2054/local/-/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2792339,
                            "position": 3,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "1405",
                                    "oImageWidth": "2050",
                                    "sImageHeight": "342",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Shaam News Network via AP",
                                    "alternate": null,
                                    "title": "day091013_002",
                                    "caption": "In this image taken from video obtained from the Shaam News Network, which has been authenticated based on its contents and other AP reporting, smoke rises from buildings due to heavy artillery shelling in Barzeh, a district of Damascus, Syria, Tuesday, Sept. 10, 2013. (AP Photo/Shaam News Network via AP video) ORG XMIT: BEI104",
                                    "datephototaken": "9/10/2013 12:00:00 AM",
                                    "cutline": "Smoke rises from buildings during heavy artillery shelling in Barzeh, Syria.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "day091013_002.jpg",
                                    "imgIndex": "1378826020001",
                                    "imgUniqueName": "1378826020001-day091013-002.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/USATODAY/2013/09/10/1378826020001-day091013-002.jpg",
                                    "smallbasename": "/-mm-/c5e135f39b641a320291b60d64758ac5b28be685/r=500x342/local/-/media/USATODAY/USATODAY/2013/09/10/1378826020001-day091013-002.jpg",
                                    "keywords": null,
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/USATODAY/2013/09/10/1378826020001-day091013-002.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/5cd7fe74e0a7eeeb5039f88a36bf51da15b0b0d9/c=373-53-1726-1409/local/-/media/USATODAY/USATODAY/2013/09/10/1378826020001-day091013-002.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/8960403e7235351638312cd45cd9fac9bc50d1ef/c=123-49-1931-1409/local/-/media/USATODAY/USATODAY/2013/09/10/1378826020001-day091013-002.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/e19d1fae6c47d82f8a46f8502a5da456d3f58a66/c=516-24-1549-1400/local/-/media/USATODAY/USATODAY/2013/09/10/1378826020001-day091013-002.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/6b879aa0fd459503de7f1d3a0ad7058a471fc782/c=24-135-2050-1277/local/-/media/USATODAY/USATODAY/2013/09/10/1378826020001-day091013-002.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/a89072981eb38655fdde6ed5644ceb4dde1be9d5/c=758-32-1529-1409/local/-/media/USATODAY/USATODAY/2013/09/10/1378826020001-day091013-002.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/765bd5e0aef54944ddf561dd93e8462d5ce0045a/c=311-119-1820-1409/local/-/media/USATODAY/USATODAY/2013/09/10/1378826020001-day091013-002.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "text",
                            "value": "Hoping to take another big bite out of the smartphone market, Apple on Tuesday unveiled its next-generation iPhone 5S, a new iPhone 5C in several colors starting at $99 and the latest version of its new iOS 7 operating system."
                        },
                        {
                            "type": "asset",
                            "value": "2794181"
                        },
                        {
                            "type": "text",
                            "value": "Apple marketing chief Phil Schiller showed green, white, blue, pink, and yellow iPhone 5C models at its Cupertino headquarters. The new phone casings are made of a polycarbonate plastic."
                        },
                        {
                            "type": "text",
                            "value": "The new 5C will cost $99 for a 16GB version and $199 for a 32GB model with a wireless service contract. It will be powered by Apple's A6 processor and sport an upgraded 8 megapixel camera. The 5C gets Apple's 4-inch retina display and can run on 4G LTE networks."
                        },
                        {
                            "type": "text",
                            "value": "Apple's dual phone attack will allow it to \"serve even more customers,\" said  Schiller on stage."
                        },
                        {
                            "type": "asset",
                            "value": "2794605"
                        },
                        {
                            "type": "text",
                            "value": "But the colorful iPhone 5C addition to its lineup will run $549 for a model purchased without a carrier plan, a price some may see as relatively high, points out Gartner analyst Van Baker."
                        },
                        {
                            "type": "asset",
                            "value": "2794641"
                        },
                        {
                            "type": "text",
                            "value": "Shares of Apple fell 2.3% at $494.64 in closing trading following the news."
                        },
                        {
                            "type": "text",
                            "value": "\"The reason why the stock is down is the price is a little more than was hoped for,\" says Baker."
                        },
                        {
                            "type": "text",
                            "value": "Apple's Schiller also took the wraps off the iPhone 5S, calling it the new \"gold standard\" in phones. Apple's latest will be a 64-bit model powered by a zippier A7 chip and come in a new a gold option in addition to black and silver. Apple's marketing chief says the processor is twice as fast as its predecessor."
                        },
                        {
                            "type": "text",
                            "value": "Apple also included a much-expected fingerprint ID sensor in its home button, allowing people to unlock the phone as well as make iTunes purchases."
                        },
                        {
                            "type": "asset",
                            "value": "2794617"
                        },
                        {
                            "type": "text",
                            "value": "\"The fingerprint reader and 64-bit chip set the (5S) apart from the competition,\" says Creative Strategies analyst Tim bajarin."
                        },
                        {
                            "type": "text",
                            "value": "IPhone 5S prices will run $199 for a 16GB model, $299 for a 32GB and  $399 for a 64GB one — all requiring a two-year contract."
                        },
                        {
                            "type": "text",
                            "value": "The 5C will be available for pre-order on Sept. 13 for delivery by Sept. 20. The 5S will be available starting Sept. 20, with no pre-order option."
                        },
                        {
                            "type": "text",
                            "value": "Also new: iPhone 5S has a motion chip, called M7, which will send data from sensors to apps, which could mark its first step to wearable computing. The new M7 chip can sense if its user is walking, running, driving or stationary. Such capabilities pave the way for new health and fitness apps."
                        },
                        {
                            "type": "text",
                            "value": "Camera advances come to the iPhone 5S as well. The 8-megapixels stays the same but the unit will feature a larger sensor capable of better results in low light. The A7 chip will deliver faster auto focus and picture capture as well as provide image and video stabilization."
                        },
                        {
                            "type": "text",
                            "value": "\"I think the 5S will do extremely well. The question mark is how well the 5C will do and sell at that price point,\" says Baker."
                        },
                        {
                            "type": "text",
                            "value": "This fall is shaping up as a crucial season for smartphone makers. Apple is up against top Android phones from Samsung, HTC, Sony and LG, not to mention the new Moto X from Google's Motorola unit and Nokia's Lumia 1020 Windows Phone."
                        },
                        {
                            "type": "text",
                            "value": "Phones in distinctive colors and styles are a big part of the competitive push this year. Moto X buyers on AT&amp;T now can customize the look of the handset via the Moto Maker feature, and HTC just rolled out a metallic blue HTC One that is available exclusively at Best Buy."
                        },
                        {
                            "type": "text",
                            "value": "Apple will reach its 700 millionth shipment of iOS by next month. Google recently passed 1 billion Android activations."
                        },
                        {
                            "type": "text",
                            "value": "\"The 5S is a really nice phone. They seem really confident that the fingerprint technology will work. If they can do that and have it work effectively, it is a really nice improvement to the pass code,\" says Baker."
                        },
                        {
                            "type": "text",
                            "value": "With its one-time iron-clad grip on the the smartphone market under pressure, Apple is banking on a new hit. Its market share fell again in the second quarter  — to 14.2%, from 18.8% the year before, according to a recent report from research Gartner."
                        },
                        {
                            "type": "text",
                            "value": "Apple sold more phones in the quarter — 31.9 million, up from 28.9 million a year ago — but there's a huge gap between Apple and No. 1 ranked Samsung, which sold 71.4 million smartphones, up from 45.6 million."
                        },
                        {
                            "type": "text",
                            "value": "\"We think the 5S will solidify (Apple's) leadership on the high end, and the 5C will lead (Apple) to improved market share,\" says S&amp;P Capital IQ analyst Scott Kessler."
                        },
                        {
                            "type": "text",
                            "value": "Apple also took the final wraps off its latest version of iOS 7, to be released Sept. 18. The new operating system takes a stripped-down approach to the look and feel of the software. The new iOS 7 gives recommendations for commute planning much in the way Google Now does."
                        },
                        {
                            "type": "text",
                            "value": "Along with the launch of iOS 7 comes availability of Apple's previously announced iTunes Radio streaming music service."
                        },
                        {
                            "type": "text",
                            "value": "Also, iWorks will become a free app available on new iOS devices, offering creation of documents, spreadsheets and presentations."
                        },
                        {
                            "type": "text",
                            "value": "Siri now comes in male and female voice options. The voice assistant has added new features such as the ability to return Tweets among queries."
                        },
                        {
                            "type": "asset",
                            "value": "2793489"
                        }
                    ],
                    "id": 2793153,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Apple juices up iPhones, adds colors",
                        "shortHeadline": "Apple juices up iPhones, adds colors",
                        "byline": "Scott Martin and Nancy Blair, USA TODAY",
                        "editedHeadline": "Apple juices up iPhones with colors, fingerprint tech",
                        "storyabstract": "Hoping to take another big bite out of the smartphone market, Apple on Tuesday unveiled its next-generation iPhone 5S, a new iPhone 5C in several colors starting at $99 and the latest version of its new iOS 7 operating system. Apple marketing chief Phil Schiller showed green, white, blue, pink, and yellow iPhone 5C models at its Cupertino headquarters. The new phone casings are made of a polycarbonate plastic. The new 5C will cost $99 for a 16GB version and $199 for a 32GB model with a wireless service contract. It will be powered by Apple's A6 processor and sport an upgraded 8 megapixel camera. The 5C gets Apple's 4-inch retina display and can run on 4G LTE networks.",
                        "brief": "Company unleashes latest lineup of gadgets at headquarters.",
                        "storyhighlights": [
                            "Colorful iPhone 5C starts at %2499 with a contract%3B %24549 without contract",
                            "Apple stock falters more than 2%25 in mid-day trading on the news",
                            "New flagship iPhone 5S includes fingerprint recognition"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T16:36:18.4176982-04:00",
                            "feeddateline": "2013-09-10T16:36:18.4176982-04:00",
                            "published": "2013-09-10T18:00:18Z",
                            "lastupdated": "2013-09-10T20:36:18Z"
                        },
                        "ssts": {
                            "section": "tech",
                            "subsection": "",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/tech/2013/09/10/apple-juices-up-iphones-adds-flavors/2793153/",
                            "shorturl": "http://usat.ly/1fVDbCM",
                            "mobileurl": "http://usat.ly/1fVDbCM"
                        },
                        "firstAsset": 2646505,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "tech",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2793489,
                            "position": 1,
                            "type": "gallery",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": "tech",
                                "subsection": "",
                                "topic": "",
                                "subtopic": "",
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "name": "Apple introduces new iPhones, iOS7 operating system",
                                    "thumbnailPath": "/-mm-/d782962e79a7e54a939e5e2a3e926061d87d6a79/r=500x376/local/-/media/USATODAY/USATODAY/2013/09/10/1378837765000-apple091013-025.jpg",
                                    "thumbnailAssetId": "2794155",
                                    "thumbnailLock": "True",
                                    "gallerySstsPublishLocation": "tech",
                                    "suppressVideoPreroll": "False",
                                    "galleryType": "Standard",
                                    "seoName": "apple-introduces-new-iphones-ios7-operating-system",
                                    "excludemobile": "False",
                                    "noadvertising": "False",
                                    "lastaction": "Published",
                                    "content-protection-state": "free",
                                    "editor": "mtsukamo",
                                    "thumbnailTiny": "/-mm-/8b72f3d1e8b2bb4404452cf14d3570e3ca4fb21e/c=0-36-2000-1544&r=115x86/local/-/media/USATODAY/USATODAY/2013/09/10/1378837765000-apple091013-025.jpg",
                                    "slidecount": "24",
                                    "interactive": "false",
                                    "topic": "tech_personal-tech,money_business",
                                    "aws": "tech"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/55b1a9c5789b865eb7b1c421edcb0244866b1e3a/c=352-8-1709-1367/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/625dfdde464eba0cf07059c0ad20819eab740211/c=118-4-1931-1367/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/9202db06a4cfe26a51c08b913abd7a91a33ceb9c/c=512-16-1525-1367/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/33865f412275c64405c0d753052530e7d4edbcaf/c=28-164-2050-1305/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/ac4dc5f63e5b0d1bca1cf111d23a26b8f579690d/c=643-0-1406-1367/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/5d3a47498cd77eaa87acd5924c0f42cb621c7cb6/c=225-0-1824-1367/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2646505,
                            "position": 2,
                            "type": "Interactive:Sequencer",
                            "status": "Published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": "tech",
                                "subsection": "",
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "interactivename": "usat 2013-08-12 iPhone innovation",
                                    "name": "Apple adds a splash of color",
                                    "suppressad": "False",
                                    "collapsebuttons": "False",
                                    "longdescription": "Apple unveiled two new iPhones on Tuesday. The iPhone 5C is affordable and comes in five glossy colors. the iPhone 5S has an A7 processor and a fingerprint indentity sensor. A closer look at the newest iPhones:",
                                    "source": "Apple Inc., USA TODAY Research",
                                    "origin": "usatoday",
                                    "editor": "fpompa",
                                    "datecreated": "9/10/2013 4:03:40 PM",
                                    "datepublished": "9/10/2013 4:03:39 PM",
                                    "credit": "Kevin A. Kepple, Anne R. Carey, Frank Pompa, Brett Molina, Jerry Mosemak, Joan Murphy and Mike Snider, USA TODAY",
                                    "permalink": "http://www.usatoday.com/interactive/2646505/apple-adds-a-splash-of-color",
                                    "buttonNumbers": null,
                                    "buttonSize": null,
                                    "imageEffect": "vslide-transition",
                                    "globalmage": null,
                                    "interactive": "true",
                                    "aws": "tech"
                                },
                                "crops": null,
                                "document": "{\"events\":{\"e\":[{\"boxHead\":\"The latest from Apple\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/ee6884be-110e-4f7c-a34e-bad37a462741-colors_Artboard 09.png\",\"boxVideo\":null},{\"boxHead\":\"iPhone 5S\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/ee6884be-110e-4f7c-a34e-bad37a462741-new-phones_Artboard 07.png\",\"boxVideo\":null},{\"boxHead\":\"iPhone 5C\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/ee6884be-110e-4f7c-a34e-bad37a462741-new-phones_Artboard 08.png\",\"boxVideo\":null},{\"boxHead\":\"iPhone 5\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/ee6884be-110e-4f7c-a34e-bad37a462741-new-phones_Artboard 06.png\",\"boxVideo\":null},{\"boxHead\":\"iPhone 4S\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/591ff0ec-ecc7-434f-81e7-64840754d994-02d_iphone4s.png\",\"boxVideo\":null},{\"boxHead\":\"iPhone 4\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/85d81e37-c2e9-458b-9d51-30e6ef39a4ca-03e_iphone4.png\",\"boxVideo\":null},{\"boxHead\":\"iPhone 3GS\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/591ff0ec-ecc7-434f-81e7-64840754d994-04d_iphone3gs.png\",\"boxVideo\":null},{\"boxHead\":\"iPhone3G\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/591ff0ec-ecc7-434f-81e7-64840754d994-05d_iphone3g.png\",\"boxVideo\":null},{\"boxHead\":\"iPhone\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/591ff0ec-ecc7-434f-81e7-64840754d994-06d_iphone.png\",\"boxVideo\":null}]}}"
                            }
                        },
                        {
                            "id": 2794181,
                            "position": 3,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "3162",
                                    "oImageWidth": "4393",
                                    "sImageHeight": "359",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Marcio Jose Sanchez, AP",
                                    "alternate": null,
                                    "title": "apple schiller",
                                    "caption": "Phil Schiller, Apple's senior vice president of worldwide product marketing, speaks on stage during the introduction of the new iPhone 5C and 5S in Cupertino, Calif.",
                                    "datephototaken": "9-10-2013",
                                    "cutline": "Phil Schiller, Apple's senior vice president of worldwide product marketing, speaks on stage during the introduction of the new iPhone 5C and 5S in Cupertino, Calif.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AP Apple Event.jpg",
                                    "imgIndex": "1378837882000",
                                    "imgUniqueName": "1378837882000-AP-Apple-Event.jpg",
                                    "isImageVisitedByUser": "False",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378837882000-AP-Apple-Event.jpg",
                                    "smallbasename": "/-mm-/68e8968ee8a51f08552bfe285f46f3e3403fac93/r=500x359/local/-/media/USATODAY/test/2013/09/10/1378837882000-AP-Apple-Event.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378837882000-AP-Apple-Event.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/1bdbc85e8bc254a3607deb339e00281556ac1a37/c=1010-0-4164-3162/local/-/media/USATODAY/test/2013/09/10/1378837882000-AP-Apple-Event.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/de02d2d6cecbbd49d4315d27e7ea527e465822a9/c=105-0-4296-3162/local/-/media/USATODAY/test/2013/09/10/1378837882000-AP-Apple-Event.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/1887041644a57a1dcff5ba098602bf385408ba57/c=1467-0-3830-3162/local/-/media/USATODAY/test/2013/09/10/1378837882000-AP-Apple-Event.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/d3fa4725d314fd76e99a9106b16bb977a8fc5441/c=0-96-4393-2580/local/-/media/USATODAY/test/2013/09/10/1378837882000-AP-Apple-Event.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/3df6e3443c7f89bbe4572d301e913092ca8a4bc1/c=1695-0-3461-3162/local/-/media/USATODAY/test/2013/09/10/1378837882000-AP-Apple-Event.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/989e4680307d9934c1bffc3354969c9e307fc4fe/c=1326-290-4050-2624/local/-/media/USATODAY/test/2013/09/10/1378837882000-AP-Apple-Event.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2794605,
                            "position": 4,
                            "type": "video",
                            "status": "published",
                            "url": "http://www.usatoday.com/videos/tech/personal/2013/09/10/2794605/",
                            "mobileUrl": "http://usat.ly/1fWkdMc",
                            "ssts": {
                                "section": "tech",
                                "subsection": "personal",
                                "topic": "",
                                "subtopic": "",
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "brightcoveid": "2662970537001",
                                    "name": "Apple introduces 2 new iPhone models",
                                    "shortdescription": "Apple's latest iPhones will come in a bevy of colors and two distinct designs, a cheaper one made of plastic and another that aims to be \"the gold standard of smartphones\" and reads your fingerprint. (Sept. 10)",
                                    "tags": "consumer electronics,technology,national,Mobile phones,business",
                                    "source": "AP",
                                    "origin": "AP",
                                    "autoarchive": "true",
                                    "adsenabled": "True",
                                    "startdate": null,
                                    "enddate": null,
                                    "gannetttracking": "urn:publicid:ap.org:672e860f60f241baa48d8df9bf24210e",
                                    "longdescription": null,
                                    "viraldistribution": "true",
                                    "user": "mafowler",
                                    "datecreated": "9/10/2013 3:31:43 PM",
                                    "credit": "AP",
                                    "propertyid": "1",
                                    "brightcoveaccount": "29906170001",
                                    "thumbnail": "http://videos.usatoday.net/Brightcove2/29906170001/2013/09/29906170001_2663084498001_thumb-04e88b848d9f031e3d0f4a504700889f.jpg?pubId=29906170001",
                                    "videostill": "http://videos.usatoday.net/Brightcove2/29906170001/2013/09/29906170001_2663084498001_thumb-04e88b848d9f031e3d0f4a504700889f.jpg?pubId=29906170001",
                                    "status": "complete",
                                    "length": "01:22",
                                    "excludemobile": "False",
                                    "excluderightnow": "False",
                                    "majorchange": "False",
                                    "content-protection-state": "free",
                                    "lastaction": "Published",
                                    "interactive": "false",
                                    "topic": "tech",
                                    "aws": "tech/products"
                                },
                                "crops": null,
                                "document": null
                            }
                        },
                        {
                            "id": 2794641,
                            "position": 5,
                            "type": "embed",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "name": "<data>iPhone Mass Relevance widget</data>",
                                    "interactive": "false"
                                },
                                "crops": null,
                                "document": "<iframe src=\"http://up.massrelevance.com/massrel-products/spotlight-v13/index.html?config=USATofficial/usat-tech-iphone\" frameborder=\"0\" width=\"550px\" height=\"250px\" style=\"border: 1px solid rgb(234, 234, 234); overflow-x: none; overflow-y: none; \" allowtransparency=\"true\" scrolling=\"auto\"><!--iframe--></iframe>"
                            }
                        },
                        {
                            "id": 2794617,
                            "position": 6,
                            "type": "embed",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "name": "<data>iphone vine</data>",
                                    "interactive": "false"
                                },
                                "crops": null,
                                "document": "<iframe class=\"vine-embed\" src=\"https://vine.co/v/h1XMK62JDZO/embed/simple\" width=\"480\" height=\"480\" frameborder=\"0\"><!--iframe--></iframe><script async=\"true\" src=\"//platform.vine.co/static/scripts/embed.js\" charset=\"utf-8\"><!-- comment --></script>"
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2794741"
                        },
                        {
                            "type": "text",
                            "value": "Authorities were continuing to investigate a domestic dispute involving George Zimmerman and his estranged wife at her father's Florida home, despite Shellie Zimmerman's refusal to press charges, Lake Mary police said Tuesday."
                        },
                        {
                            "type": "asset",
                            "value": "2793371"
                        },
                        {
                            "type": "text",
                            "value": "Public information officer Zach Hudson said police responded to a 911 call Monday afternoon from Shellie Zimmerman in which she can be heard telling the dispatcher that George Zimmerman threatened her and her father with a gun and that \"I'm really scared.\""
                        },
                        {
                            "type": "text",
                            "value": "She later recanted the gun accusation, police said. \"We took him down at gunpoint,\" Hudson said. \"We searched him physically. There was no weapon, nor was there any weapon involved.\""
                        },
                        {
                            "type": "text",
                            "value": "She also can be heard on the call saying George Zimmerman smashed an iPad she was holding and cut it with a pocket knife."
                        },
                        {
                            "type": "text",
                            "value": "\"We have an iPad in our possession,\" Hudson said. \"That iPad has video footage on it — what was going on inside the household. Unfortunately the iPad is in several pieces,\" but has been sent to a lab for analysis, he said."
                        },
                        {
                            "type": "text",
                            "value": "Police allowed Zimmerman to go free Monday afternoon after questioning him outside the home. Police Chief Steve Bracknell said Shellie Zimmerman and her father decided not to press charges after consulting with a lawyer. However, the investigation will continue,  Hudson said."
                        },
                        {
                            "type": "text",
                            "value": "Florida law allows police officers to arrest someone for domestic violence without the consent of the victim."
                        },
                        {
                            "type": "text",
                            "value": "George Zimmerman's attorney, Mark O'Mara, said on Monday his client did nothing wrong and the dispute was typical for a couple going through a divorce. On Tuesday, he said he was not going to represent George Zimmerman in the matter."
                        },
                        {
                            "type": "text",
                            "value": "\"I've come to know them as a family, and it's not a good idea to get in between them,\" O'Mara said."
                        },
                        {
                            "type": "text",
                            "value": "George Zimmerman was acquitted in July in the 2012 shooting death of 17-year-old Trayvon Martin in a case that captured the nation's attention and put a spotlight on Florida's self-defense gun laws."
                        },
                        {
                            "type": "text",
                            "value": "    Contributing: William M. Welch; Associated Press  "
                        },
                        {
                            "type": "text",
                            "value": "Follow John Bacon on Twitter, @jmbacon"
                        }
                    ],
                    "id": 2794659,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Zimmerman could still face charges after 911 call",
                        "shortHeadline": "Zimmerman could still face charges after 911 call",
                        "byline": "John Bacon, USA TODAY",
                        "editedHeadline": null,
                        "storyabstract": "Authorities were continuing to investigate a domestic dispute involving George Zimmerman and his estranged wife at her father's Florida home, despite Shellie Zimmerman's refusal to press charges, Lake Mary police said Tuesday. Public information officer Zach Hudson said police responded to a 911 call Monday afternoon from Shellie Zimmerman in which she can be heard telling the dispatcher that George Zimmerman threatened her and her father with a gun and that \"I'm really scared.\" She later recanted the gun accusation, police said. \"We took him down at gunpoint,\" Hudson said. \"We searched him physically. There was no weapon, nor was there any weapon involved.\"",
                        "brief": "Police say they have an iPad that could contain video evidence.",
                        "storyhighlights": null,
                        "dates": {
                            "embargodate": "2013-09-10T16:32:31.364-04:00",
                            "feeddateline": "2013-09-10T16:32:31.364-04:00",
                            "published": "2013-09-10T19:57:30Z",
                            "lastupdated": "2013-09-10T20:32:32Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "nation",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/nation/2013/09/10/zimmerman-domestic-dispute-charges-ipad/2794659/",
                            "shorturl": "http://usat.ly/1fWmirx",
                            "mobileurl": "http://usat.ly/1fWmirx"
                        },
                        "firstAsset": 2793371,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "news/national",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2793371,
                            "position": 1,
                            "type": "video",
                            "status": "published",
                            "url": "http://www.usatoday.com/videos/news/nation/2013/09/10/2793371/",
                            "mobileUrl": "http://usat.ly/17OcIpO",
                            "ssts": {
                                "section": "news",
                                "subsection": "nation",
                                "topic": "",
                                "subtopic": "",
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "brightcoveid": "2662773752001",
                                    "name": "Video of Zimmerman incident may be on iPad",
                                    "shortdescription": "Police investigating a domestic dispute between George Zimmerman and his estranged wife say video from Shellie Zimmerman's iPad may be crucial evidence in determining whether any charges are filed. (Sept. 10)",
                                    "tags": "law enforcement agencies,General News,Crime,police,national,Government and Politics",
                                    "source": "AP",
                                    "origin": "AP",
                                    "autoarchive": "true",
                                    "adsenabled": "True",
                                    "startdate": null,
                                    "enddate": null,
                                    "gannetttracking": "urn:publicid:ap.org:3b514678494e4a2582ecff0e94bc250d",
                                    "longdescription": null,
                                    "viraldistribution": "true",
                                    "user": "mafowler",
                                    "datecreated": "9/10/2013 1:11:32 PM",
                                    "credit": "AP",
                                    "propertyid": "1",
                                    "brightcoveaccount": "29906170001",
                                    "thumbnail": "http://videos.usatoday.net/Brightcove2/29906170001/2013/09/29906170001_2662814319001_thumb-b23725678d1d011e3d0f4a504700467a.jpg?pubId=29906170001",
                                    "videostill": "http://videos.usatoday.net/Brightcove2/29906170001/2013/09/29906170001_2662814319001_thumb-b23725678d1d011e3d0f4a504700467a.jpg?pubId=29906170001",
                                    "status": "complete",
                                    "length": "01:09",
                                    "excludemobile": "False",
                                    "excluderightnow": "False",
                                    "majorchange": "False",
                                    "content-protection-state": "free",
                                    "lastaction": "Published",
                                    "interactive": "false",
                                    "topic": "news_nation",
                                    "aws": "news/national"
                                },
                                "crops": null,
                                "document": null
                            }
                        },
                        {
                            "id": 2794741,
                            "position": 2,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "2306",
                                    "oImageWidth": "3664",
                                    "sImageHeight": "314",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "John Raoux, AP",
                                    "alternate": null,
                                    "title": "AP zimm tue",
                                    "caption": "Police cars block the street at the scene of a domestic incident in Lake Mary, Fla., on Sept. 9, 2013.",
                                    "datephototaken": "9-9-2013",
                                    "cutline": "Police cars block the street at the scene of a domestic incident in Lake Mary, Fla., on Sept. 9, 2013.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AP zimm tue.jpg",
                                    "imgIndex": "1378843422000",
                                    "imgUniqueName": "1378843422000-AP-zimm-tue.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378843422000-AP-zimm-tue.jpg",
                                    "smallbasename": "/-mm-/c4ca2040e070ebc38a4525ff681d7b703556adee/r=500x314/local/-/media/USATODAY/test/2013/09/10/1378843422000-AP-zimm-tue.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378843422000-AP-zimm-tue.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/7cf7e2e096c548d0511b7cbe3c1ce5e0084b7b80/c=322-0-2623-2306/local/-/media/USATODAY/test/2013/09/10/1378843422000-AP-zimm-tue.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/47b1c8532d54fb8b1c72c148cc3ccfd5021b9c0c/c=87-0-3151-2306/local/-/media/USATODAY/test/2013/09/10/1378843422000-AP-zimm-tue.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/a92d5f1bd8931030b395f7e5f526d1e2c779d096/c=894-0-2623-2306/local/-/media/USATODAY/test/2013/09/10/1378843422000-AP-zimm-tue.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/4bf935bf09798fffbd0a9f52f8e0e5002647bc1c/c=0-168-3656-2239/local/-/media/USATODAY/test/2013/09/10/1378843422000-AP-zimm-tue.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/4d41efcdcfd0dcf40761b444995173f715a23559/c=1275-0-2564-2306/local/-/media/USATODAY/test/2013/09/10/1378843422000-AP-zimm-tue.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/c7e503258fadf528f70fa0b30fdf92d9fa424f9a/c=190-0-2879-2306/local/-/media/USATODAY/test/2013/09/10/1378843422000-AP-zimm-tue.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2794459"
                        },
                        {
                            "type": "text",
                            "value": "Syria's foreign minister said Tuesday his country is ready to sign an international agreement banning chemical weapons and pledged to open its storage sites and provide full disclosure immediately."
                        },
                        {
                            "type": "text",
                            "value": "\"We fully support Russia's initiative concerning chemical weapons in Syria, and we are ready to cooperate. As a part of the plan, we intend to join the Chemical Weapons Convention,\" Syrian Foreign Minister Walid Muallem said in an interview with Lebanon-based Al-Maydeen TV."
                        },
                        {
                            "type": "text",
                            "value": "He said Syria was \"ready to fulfill our obligations\" under the terms of the treaty, including providing information about Syria's chemical weapons."
                        },
                        {
                            "type": "text",
                            "value": "\"We will open our storage sites, and cease production. We are ready to open these facilities to Russia, other countries and the United Nations,\" Muallem said in the interview."
                        },
                        {
                            "type": "text",
                            "value": "He added: \"We intend to give up chemical weapons altogether.\""
                        },
                        {
                            "type": "text",
                            "value": "The report on the interview was carried by the Associated Press and RIA Novosti."
                        },
                        {
                            "type": "text",
                            "value": "The last development comes as Russian President Vladimir Putin told RT.com that an agreement in which Syria would turn over its chemical weapons to international control would only work if the United States and its allies renounce the use of force against Damascus."
                        },
                        {
                            "type": "text",
                            "value": "Muallem has been in Moscow for talks with Russian officials about the chemical weapons crisis."
                        },
                        {
                            "type": "text",
                            "value": "Syria is one of only five countries that has not signed the Chemical Weapons Convention that was drawn up in 1993. The others are North Korea, Angola, Egypt and South Sudan. "
                        },
                        {
                            "type": "text",
                            "value": " The arms control agreement bans the production,  stockpiling and use of chemical weapons and their precursors. "
                        },
                        {
                            "type": "text",
                            "value": "Muallem's pledge to sign the agreement and open Syria's storage sites comes amid a flurry of diplomatic moves around a Russian proposal that Syria place its chemical arms under international control."
                        },
                        {
                            "type": "text",
                            "value": "Syria has agreed to the proposal, and France has proposed a related resolution for the United Nations."
                        },
                        {
                            "type": "text",
                            "value": "Putin acknowledged that he had discussed such a possibility with President Obama on the sidelines of the G-20 summit last week in St. Petersburg, Russia."
                        },
                        {
                            "type": "asset",
                            "value": "2791553"
                        },
                        {
                            "type": "text",
                            "value": "It was agreed, Putin said, \"to instruct Secretary of State (John Kerry) and Foreign Minister (Sergey Lavrov) to get in touch\" and \"try to move this idea forward.\""
                        },
                        {
                            "type": "text",
                            "value": "Putin fleshed out the proposal Tuesday, saying it would only work if Washington called off any strike against Damascus."
                        },
                        {
                            "type": "text",
                            "value": "\"Certainly, this is all reasonable, it will function and will work out, only if the U.S. and those who support it on this issue pledge to renounce the use of force, because it is difficult to make any country – Syria or any other country in the world – to unilaterally disarm if there is military action against it under consideration,\" Putin said Tuesday. "
                        },
                        {
                            "type": "text",
                            "value": "Obama has threatened military action against Syria in response to an alleged chemical weapons attack in August that killed more than 1,400 people in a Damascus suburb. Syria has denied using chemical weapons."
                        },
                        {
                            "type": "text",
                            "value": "Obama, who will address the nation Tuesday night, spoke  with the leaders of France and the United Kingdom, and agreed to explore the Russian proposal, senior White House officials said."
                        },
                        {
                            "type": "text",
                            "value": "He was also discussing the issue on Capitol Hill."
                        },
                        {
                            "type": "text",
                            "value": "In other developments:"
                        },
                        {
                            "type": "text",
                            "value": "• France said it would put a resolution before the U.N. Security Council appealing to Syria to make public details of its chemical weapons program."
                        },
                        {
                            "type": "text",
                            "value": "• The Arab League said it backs the Russian initiative calling on Syria to puts it chemical weapons under international control."
                        },
                        {
                            "type": "text",
                            "value": "• Secretary of State Kerry and Defense Secretary Chuck Hagel expressed cautious support for the proposal, but said it must not be used as a diplomatic stalling tactic."
                        },
                        {
                            "type": "text",
                            "value": "Foreign Minister Muallem said Damascus accepted the Russian initiative to \"derail the U.S. aggression.\""
                        },
                        {
                            "type": "text",
                            "value": "The report was initially carried by the Russian news agency Interfax."
                        },
                        {
                            "type": "text",
                            "value": "Meanwhile, Lavrov said that Russia is now working with Syria to prepare a detailed plan of action, which will be presented shortly."
                        },
                        {
                            "type": "text",
                            "value": "He said Moscow will then be ready to finalize the plan together with U.N. Secretary-General Ban Ki Moon and the Organization for the Prohibition of Chemical Weapons."
                        },
                        {
                            "type": "text",
                            "value": "The announcement by France for a resolution at the Security Council was made in Paris by French Foreign Minister Laurent Fabius."
                        },
                        {
                            "type": "text",
                            "value": "It was not immediately clear whether the terms of an agreement accepted by Syria would track with the French proposal, but it was a sign of further diplomatic progress on the issue."
                        },
                        {
                            "type": "text",
                            "value": "Fabius said the terms of the resolution will call for an \"extremely serious\" response if Syria were to violate the conditions set by the resolution. He said the process — under Chapter 7 of the U.N. charter — will start later Tuesday."
                        },
                        {
                            "type": "text",
                            "value": "France is a permanent member of the Security Council. The other permanent members are the United States, United Kingdom, China and Russia. Permanent members have the power to veto resolutions."
                        },
                        {
                            "type": "asset",
                            "value": "2737291"
                        },
                        {
                            "type": "text",
                            "value": "Both Kerry and Hagel addressed the proposal Tuesday in a joint appearance before a House committee."
                        },
                        {
                            "type": "text",
                            "value": "Kerry said the U.S.has made it clear \"this can't become a process of delay and avoidance.\""
                        },
                        {
                            "type": "text",
                            "value": "The U.S. is willing to wait, he said, \"but we not waiting for long. The Security Council can't be allowed to become a debating society.\""
                        },
                        {
                            "type": "text",
                            "value": "Hagel also expressed hope that the option might be a solution to the crisis, but added: \"We must be very clear-eyed and insure that it is not a stalling tactic by Syria and its Russian patrons.\""
                        },
                        {
                            "type": "text",
                            "value": "Sen. John McCain, R-Ariz., said Tuesday that he is \"very skeptical\" of the Russian proposal but says the best test would be to follow any Syrian acceptance by putting inspectors on the ground immediately to get the chemical weapons under control."
                        },
                        {
                            "type": "text",
                            "value": "McCain, who has called for more robust support for Syrian rebels, told CBS This Morning that as far as Congress is concern \"we have to see how this plays out.\""
                        },
                        {
                            "type": "text",
                            "value": "\"Again, put me down as extremely skeptical, but to no pursue this option would be a mistake,\" he said."
                        },
                        {
                            "type": "text",
                            "value": "McCain, ranking member of the Senate Armed Services committee and member of the Foreign Relations committee, was in the Middle East last month to meet with leaders of the Syrian rebel groups."
                        },
                        {
                            "type": "text",
                            "value": "Contributing: Kim Hjelmgaard in London, and the Associated Press"
                        },
                        {
                            "type": "asset",
                            "value": "2759693"
                        }
                    ],
                    "id": 2791315,
                    "type": "text",
                    "source": "USA TODAY",
                    "metaData": {
                        "headline": "Syrian FM: Syria will sign chemical ban, open storage sites",
                        "shortHeadline": "Syrian FM: Syria will sign chemical ban",
                        "byline": "Doug Stanglin, USA TODAY",
                        "editedHeadline": null,
                        "storyabstract": "Syria's foreign minister said Tuesday his country is ready to sign an international agreement banning chemical weapons and pledged to open its storage sites and provide full disclosure immediately. \"We fully support Russia's initiative concerning chemical weapons in Syria, and we are ready to cooperate. As a part of the plan, we intend to join the Chemical Weapons Convention,\" Syrian Foreign Minister Walid Muallem said in an interview with Lebanon-based Al-Maydeen TV. He said Syria was \"ready to fulfill our obligations\" under the terms of the treaty, including providing information about Syria's chemical weapons. \"We will open our storage sites, and cease production. We are ready to open these facilities to Russia, other countries and the United Nations,\" Muallem said in the interview.",
                        "brief": "Russian President Putin ties deal on chemical weapons to U.S.calling off any military strike.",
                        "storyhighlights": [
                            "Resolution aimed at dismantling Syria%27s chemical weapons",
                            "Syria has welcomed Russian initiative",
                            "Support for military strikes by U.S. and allies appears to be on the wane"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T16:36:43.4831995-04:00",
                            "feeddateline": "2013-09-10T16:36:43.4831995-04:00",
                            "published": "2013-09-10T09:39:55Z",
                            "lastupdated": "2013-09-10T20:36:43Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "world",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/world/2013/09/10/syria-un-resolution-france/2791315/",
                            "shorturl": "http://usat.ly/17NiY0U",
                            "mobileurl": "http://usat.ly/17NiY0U"
                        },
                        "firstAsset": 2791831,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": null,
                        "breakingNewsId": 0,
                        "aws": "news/world",
                        "topic": "syria-conflict"
                    },
                    "assets": [
                        {
                            "id": 2791831,
                            "position": 1,
                            "type": "video",
                            "status": "published",
                            "url": "http://www.usatoday.com/videos/news/world/2013/09/10/2791831/",
                            "mobileUrl": "http://usat.ly/17NHUoY",
                            "ssts": {
                                "section": "news",
                                "subsection": "world",
                                "topic": "",
                                "subtopic": "",
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "brightcoveid": "2662369347001",
                                    "name": "Syria: We accept Russian chemical weapons proposal",
                                    "shortdescription": "The Syrian government has accepted a Russian proposal to turn over its chemical weapons to international control to avoid a military confrontation with the United States, Syria's foreign minister said Tuesday.",
                                    "tags": "harry reid,vpclead,syria turn over weapons,newsbest,Chemical Weapons,International news,vpc,syria russia proposal,politics,vpcbest,Government,PBS NewsHour,National News,President Obama",
                                    "source": "VPC",
                                    "origin": "VPC",
                                    "autoarchive": "true",
                                    "adsenabled": "True",
                                    "startdate": null,
                                    "enddate": null,
                                    "gannetttracking": "VPC_VPCLEAD TUES SYRIA RUSSIAN PROPOSAL-W091013VPC",
                                    "longdescription": null,
                                    "viraldistribution": "true",
                                    "user": "mafowler",
                                    "datecreated": "9/10/2013 9:31:28 AM",
                                    "credit": "VPC",
                                    "propertyid": "1",
                                    "brightcoveaccount": "29906170001",
                                    "thumbnail": "http://bc_gvpc.edgesuite.net/img/963482463001/201309/2222/963482463001_2661472459001_thumbnail-for-video-2661982422001.jpg?pubId=963482463001",
                                    "videostill": "http://bc_gvpc.edgesuite.net/img/963482463001/201309/3222/963482463001_2661472460001_video-still-for-video-2661982422001.jpg?pubId=963482463001",
                                    "status": "complete",
                                    "length": "02:17",
                                    "excludemobile": "False",
                                    "excluderightnow": "False",
                                    "majorchange": "False",
                                    "content-protection-state": "free",
                                    "lastaction": "Published",
                                    "interactive": "false",
                                    "aws": "news/world"
                                },
                                "crops": null,
                                "document": null
                            }
                        },
                        {
                            "id": 2794459,
                            "position": 2,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "2826",
                                    "oImageWidth": "4096",
                                    "sImageHeight": "344",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Sergei Ilnitsky, epa",
                                    "alternate": null,
                                    "title": "EPA RUSSIA SYRIA DIPLOMACY",
                                    "caption": "Syrian Foreign Minister Walid Muallem speaks during a meeting with Russian Foreign Minister Sergei Lavrov (not pictured) in Moscow on Sept. 10.",
                                    "datephototaken": "9-9-2013",
                                    "cutline": "Syrian Foreign Minister Walid Muallem speaks during a meeting with Russian Foreign Minister Sergei Lavrov (not pictured) in Moscow on Sept. 10.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "EPA RUSSIA SYRIA DIPLOMACY.jpg",
                                    "imgIndex": "1378839753000",
                                    "imgUniqueName": "1378839753000-EPA-RUSSIA-SYRIA-DIPLOMACY.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/10/1378839753000-EPA-RUSSIA-SYRIA-DIPLOMACY.jpg",
                                    "smallbasename": "/-mm-/47dfb57d08c7997f89e788d8ea4dd7b04e244f33/r=500x344/local/-/media/USATODAY/GenericImages/2013/09/10/1378839753000-EPA-RUSSIA-SYRIA-DIPLOMACY.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/10/1378839753000-EPA-RUSSIA-SYRIA-DIPLOMACY.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/ddaf260f570e52da6e903ccefd5c0cb5ff2db40e/c=327-0-3145-2826/local/-/media/USATODAY/GenericImages/2013/09/10/1378839753000-EPA-RUSSIA-SYRIA-DIPLOMACY.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/3ba9d2908b202dec7afe951bf239965c7b877292/c=40-0-3792-2826/local/-/media/USATODAY/GenericImages/2013/09/10/1378839753000-EPA-RUSSIA-SYRIA-DIPLOMACY.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/48022dbfbb1019d0c02489cdd8258e404c47f10a/c=507-0-2621-2826/local/-/media/USATODAY/GenericImages/2013/09/10/1378839753000-EPA-RUSSIA-SYRIA-DIPLOMACY.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/efa9f89ae12777896fc8b99d7a5a1b75d5f40ee0/c=0-164-4096-2480/local/-/media/USATODAY/GenericImages/2013/09/10/1378839753000-EPA-RUSSIA-SYRIA-DIPLOMACY.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/c1b1fba184a8b0840e60ed4e2dd213d30ff40927/c=598-0-2179-2826/local/-/media/USATODAY/GenericImages/2013/09/10/1378839753000-EPA-RUSSIA-SYRIA-DIPLOMACY.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/9bb36409571c5b4f6d6ee30a58c050b10a66d19d/c=114-0-3407-2826/local/-/media/USATODAY/GenericImages/2013/09/10/1378839753000-EPA-RUSSIA-SYRIA-DIPLOMACY.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2791553,
                            "position": 3,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "4096",
                                    "oImageWidth": "3385",
                                    "sImageHeight": "400",
                                    "sImageWidth": "330",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "epa",
                                    "alternate": null,
                                    "title": "assad",
                                    "caption": "Syrian President Bashar Assad is seen during an interview with journalist Charlie Rose  in Damascus on Sept. 9.",
                                    "datephototaken": "9-8-2013",
                                    "cutline": "Syrian President Bashar Assad is seen during an interview with journalist Charlie Rose  in Damascus on Sept. 9.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "EPA SYRIA ASSAD INTERVIEW.jpg",
                                    "imgIndex": "1378813308000",
                                    "imgUniqueName": "1378813308000-EPA-SYRIA-ASSAD-INTERVIEW.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378813308000-EPA-SYRIA-ASSAD-INTERVIEW.jpg",
                                    "smallbasename": "/-mm-/bbb73932019c1bf10d44a657923dc7e366a37165/r=330x400/local/-/media/USATODAY/test/2013/09/10/1378813308000-EPA-SYRIA-ASSAD-INTERVIEW.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378813308000-EPA-SYRIA-ASSAD-INTERVIEW.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/88b975bd8c0801e4b573ddd9ddbc0ff4f1d52bfc/c=0-174-3385-3553/local/-/media/USATODAY/test/2013/09/10/1378813308000-EPA-SYRIA-ASSAD-INTERVIEW.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/d192a022d6771e83d30a2c992a6687e8b65752d4/c=0-225-3385-2764/local/-/media/USATODAY/test/2013/09/10/1378813308000-EPA-SYRIA-ASSAD-INTERVIEW.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/e67e893b4579ba12505a8142cfd9da82fdd0a911/c=297-174-2984-3758/local/-/media/USATODAY/test/2013/09/10/1378813308000-EPA-SYRIA-ASSAD-INTERVIEW.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/f8eac47d7d696f84c273041964612988e4ab0790/c=0-378-3385-2283/local/-/media/USATODAY/test/2013/09/10/1378813308000-EPA-SYRIA-ASSAD-INTERVIEW.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/e9973fcc8832d379d5977062f0349954ef505d9e/c=410-0-2708-4096/local/-/media/USATODAY/test/2013/09/10/1378813308000-EPA-SYRIA-ASSAD-INTERVIEW.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/c2b8049adc2e6548da05bf3099567bb69afe0be7/c=0-215-3385-3102/local/-/media/USATODAY/test/2013/09/10/1378813308000-EPA-SYRIA-ASSAD-INTERVIEW.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2737291,
                            "position": 4,
                            "type": "embed",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "name": "<data>Syria general tweets</data>",
                                    "interactive": "false"
                                },
                                "crops": null,
                                "document": "<iframe src=\"http://up.massrelevance.com/massrel-products/spotlight-v13/index.html?config=USATofficial/usat-news-syria-spotlight\" frameborder=\"0\" width=\"550px\" height=\"250px\" style=\"border-top-style: none; border-right-style: none; border-bottom-style: none; border-left-style: none; border-width: initial; border-color: initial; border-image: initial; overflow-x: none; overflow-y: none; \" allowtransparency=\"true\" scrolling=\"auto\"><!--iframe--></iframe>"
                            }
                        },
                        {
                            "id": 2759693,
                            "position": 5,
                            "type": "Interactive:Sequencer",
                            "status": "Published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": "news",
                                "subsection": "world",
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "interactivename": "usat 2013-08-21 syria primer",
                                    "name": "Understanding Syria: A visual guide to the latest crisis in the middle east ",
                                    "suppressad": "False",
                                    "collapsebuttons": "False",
                                    "longdescription": "Syria, once the center of the Islamic empire, has been the scene of many conquests throughout history before its present incarnation as a dictatorship led by a small Shiite Muslim sect battling a rebellion of Sunni Muslims. As a result, this land of mountains, fertile plains and desert is home to many ethnicities and religious groups.",
                                    "source": "AP, USA TODAY research",
                                    "origin": "usatoday",
                                    "editor": "thargro",
                                    "datecreated": "9/10/2013 2:42:56 PM",
                                    "datepublished": "9/10/2013 2:42:56 PM",
                                    "credit": "Kevin A. Kepple, Anne R. Carey, Emaun Kashfipour, Tory Hargro, Jerry Mosemak and Oren Dorell, USA TODAY",
                                    "permalink": "http://www.usatoday.com/interactive/2759693/understanding-syria-a-visual-guide-to-the-latest-crisis-in-the-middle-east-",
                                    "buttonNumbers": null,
                                    "buttonSize": null,
                                    "imageEffect": "fade-transition",
                                    "globalmage": null,
                                    "interactive": "true",
                                    "aws": "news/world"
                                },
                                "crops": null,
                                "document": "{\"events\":{\"e\":[{\"boxHead\":\"How we got here\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/6f4dc654-3bd0-4465-940e-2eb5f54f1a4a-01c_how.png\",\"boxVideo\":null},{\"boxHead\":\"Defeat government\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/53b27a43-463e-4136-b71b-12cbca6fe8d0-02a_gov_defeat.png\",\"boxVideo\":null},{\"boxHead\":\"Defeat rebels\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/6f4dc654-3bd0-4465-940e-2eb5f54f1a4a-03b_reb_defeat.png\",\"boxVideo\":null},{\"boxHead\":\"Coalition\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/a3b3ac98-bf99-4f8c-84f3-796ee10bffe5-04a_coalition_a.png\",\"boxVideo\":null},{\"boxHead\":\"Opposition\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/a3b3ac98-bf99-4f8c-84f3-796ee10bffe5-05_opposition_a.png\",\"boxVideo\":null},{\"boxHead\":\"Chemical and missile sites\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/2ecea590-31fb-481b-a0a1-b067cf9f397e-06_sites_a.png\",\"boxVideo\":null},{\"boxHead\":\"Military bases\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/873b3e0d-ef98-4b37-bc61-8b917e442c76-07_targets.png\",\"boxVideo\":null},{\"boxHead\":\"Chemical attacks\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/873b3e0d-ef98-4b37-bc61-8b917e442c76-08_chem_attacks.png\",\"boxVideo\":null},{\"boxHead\":\"Refugees\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/873b3e0d-ef98-4b37-bc61-8b917e442c76-09_refugees.png\",\"boxVideo\":null}]}}"
                            }
                        },
                        {
                            "id": 2791455,
                            "position": 6,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "2467",
                                    "oImageWidth": "3500",
                                    "sImageHeight": "352",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Jacques Brinon, AP",
                                    "alternate": null,
                                    "title": "france",
                                    "caption": "France's Foreign Minister Laurent Fabius speaks at a press meeting at the  Quai d' Orsay in Paris  on Sept. 10.",
                                    "datephototaken": "9-10-2013",
                                    "cutline": "France's Foreign Minister Laurent Fabius speaks at a press meeting at the  Quai d' Orsay in Paris  on Sept. 10.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AP France Russia Syria.jpg",
                                    "imgIndex": "1378809906000",
                                    "imgUniqueName": "1378809906000-AP-France-Russia-Syria.jpg",
                                    "isImageVisitedByUser": "False",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378809906000-AP-France-Russia-Syria.jpg",
                                    "smallbasename": "/-mm-/ae8c18203a33be29888b2941e900df4ccd37225c/r=500x352/local/-/media/USATODAY/test/2013/09/10/1378809906000-AP-France-Russia-Syria.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378809906000-AP-France-Russia-Syria.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/4c6ae53ca3b6a3694532c3359393942574837889/c=595-0-3059-2467/local/-/media/USATODAY/test/2013/09/10/1378809906000-AP-France-Russia-Syria.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/4f5563ed6b9e00c393b68088ed8025bf7fa1bfc5/c=112-0-3388-2467/local/-/media/USATODAY/test/2013/09/10/1378809906000-AP-France-Russia-Syria.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/cef1d97b33a5a484c30cde8dc3c0782d5aa94e5c/c=1113-0-2961-2467/local/-/media/USATODAY/test/2013/09/10/1378809906000-AP-France-Russia-Syria.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/2279d5805dff12d1fe3de4c1b5b1a82d6c041d94/c=0-294-3500-2270/local/-/media/USATODAY/test/2013/09/10/1378809906000-AP-France-Russia-Syria.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/648c1755102ddf4f5291978bd51863bd0819abcf/c=763-0-2142-2467/local/-/media/USATODAY/test/2013/09/10/1378809906000-AP-France-Russia-Syria.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/06a05b824818c6735caa624b590600f3844e833c/c=280-0-3164-2467/local/-/media/USATODAY/test/2013/09/10/1378809906000-AP-France-Russia-Syria.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2791323,
                            "position": 7,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "3024",
                                    "oImageWidth": "3856",
                                    "sImageHeight": "392",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "THOMAS SAMSON AFP/Getty Images",
                                    "alternate": null,
                                    "title": "france_syria",
                                    "caption": "French Foreign Minister Laurent Fabius in Paris on Sept. 10, 2013.",
                                    "datephototaken": "9-10-2013",
                                    "cutline": "French Foreign Minister Laurent Fabius in Paris on Sept. 10, 2013.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AFP 522743189.jpg",
                                    "imgIndex": "1378806226000",
                                    "imgUniqueName": "1378806226000-AFP-522743189.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378806226000-AFP-522743189.jpg",
                                    "smallbasename": "/-mm-/c18bf35946a5ba5a2b26e2af29834d2ea6b3ee66/r=500x392/local/-/media/USATODAY/test/2013/09/10/1378806226000-AFP-522743189.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378806226000-AFP-522743189.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/af558dc54d6628e70e9c68bb395c2ac307e8128c/c=616-0-3640-3024/local/-/media/USATODAY/test/2013/09/10/1378806226000-AFP-522743189.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/581ca6187d9a1593a1370d7c2505438aba44ca87/c=0-69-3856-2970/local/-/media/USATODAY/test/2013/09/10/1378806226000-AFP-522743189.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/787d771ea176e6e680cfb16298ef57d3e7b4f752/c=709-0-2976-3024/local/-/media/USATODAY/test/2013/09/10/1378806226000-AFP-522743189.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/e6b2aad8a19aa9fe50d1d21185e7f860cf66bf53/c=0-270-3856-2445/local/-/media/USATODAY/test/2013/09/10/1378806226000-AFP-522743189.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/15f91c7b7dc39d72697e6a1ebb16eebf1b07734d/c=840-0-2537-3024/local/-/media/USATODAY/test/2013/09/10/1378806226000-AFP-522743189.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/eb61b34e092a81c7d71387424a2acc3c43242893/c=254-0-3794-3024/local/-/media/USATODAY/test/2013/09/10/1378806226000-AFP-522743189.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "id": 2793489,
                    "position": 0,
                    "type": "gallery",
                    "status": "published",
                    "url": null,
                    "mobileUrl": "",
                    "ssts": {
                        "section": "tech",
                        "subsection": "",
                        "topic": "",
                        "subtopic": "",
                        "storysubject": null
                    },
                    "metaData": {
                        "items": {
                            "name": "Apple introduces new iPhones, iOS7 operating system",
                            "thumbnailPath": "/-mm-/d782962e79a7e54a939e5e2a3e926061d87d6a79/r=500x376/local/-/media/USATODAY/USATODAY/2013/09/10/1378837765000-apple091013-025.jpg",
                            "thumbnailAssetId": "2794155",
                            "thumbnailLock": "True",
                            "gallerySstsPublishLocation": "tech",
                            "suppressVideoPreroll": "False",
                            "galleryType": "Standard",
                            "seoName": "apple-introduces-new-iphones-ios7-operating-system",
                            "excludemobile": "False",
                            "noadvertising": "False",
                            "lastaction": "Published",
                            "content-protection-state": "free",
                            "editor": "mtsukamo",
                            "thumbnailTiny": "/-mm-/8b72f3d1e8b2bb4404452cf14d3570e3ca4fb21e/c=0-36-2000-1544&r=115x86/local/-/media/USATODAY/USATODAY/2013/09/10/1378837765000-apple091013-025.jpg",
                            "slidecount": "24",
                            "interactive": "false",
                            "topic": "tech_personal-tech,money_business",
                            "aws": "tech"
                        },
                        "crops": {
                            "1_1": "http://www.gannett-cdn.com/-mm-/55b1a9c5789b865eb7b1c421edcb0244866b1e3a/c=352-8-1709-1367/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg",
                            "4_3": "http://www.gannett-cdn.com/-mm-/625dfdde464eba0cf07059c0ad20819eab740211/c=118-4-1931-1367/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg",
                            "3_4": "http://www.gannett-cdn.com/-mm-/9202db06a4cfe26a51c08b913abd7a91a33ceb9c/c=512-16-1525-1367/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg",
                            "16_9": "http://www.gannett-cdn.com/-mm-/33865f412275c64405c0d753052530e7d4edbcaf/c=28-164-2050-1305/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg",
                            "9_16": "http://www.gannett-cdn.com/-mm-/ac4dc5f63e5b0d1bca1cf111d23a26b8f579690d/c=643-0-1406-1367/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg",
                            "front_thumb": "http://www.gannett-cdn.com/-mm-/5d3a47498cd77eaa87acd5924c0f42cb621c7cb6/c=225-0-1824-1367/local/-/media/USATODAY/USATODAY/2013/09/10/1378837434000-apple091013-023.jpg"
                        },
                        "document": null
                    }
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2793127"
                        },
                        {
                            "type": "text",
                            "value": "WASHINGTON — President Obama will address the nation Tuesday night on chemical weapons in Syria, as he and aides pursue a diplomatic proposal at the United Nations that has put military and congressional action on hold."
                        },
                        {
                            "type": "text",
                            "value": "But as talks began at the United Nations, the U.S. and Russia are at odds over the rules by which Syria might turn over its chemical weapons stockpile to international control."
                        },
                        {
                            "type": "text",
                            "value": "Officials said Secretary of State John Kerry would fly to Geneva, Switzerland, for a Thursday meeting with Russian Foreign Minister Sergey Lavrov."
                        },
                        {
                            "type": "text",
                            "value": "Obama spoke Tuesday with the leaders of France and the United Kingdom on whether the Russian proposal is workable, said a White House statement."
                        },
                        {
                            "type": "text",
                            "value": "But Russian President Vladimir Putin told reporters he would only agree to a Syrian chemical weapons hand-off if Obama renounces the use of military force against that country -- even as Obama told senators in a pair of meetings on that the military option must remain open."
                        },
                        {
                            "type": "text",
                            "value": "Putin said, \"It is difficult to make any country -- Syria or any other country in the world -- to unilaterally disarm if there is military action against it under consideration.\""
                        },
                        {
                            "type": "text",
                            "value": "Obama and aides said the threat of military force is the major reason Syria has agreed to talk about disposing of its chemical weapons under international supervision."
                        },
                        {
                            "type": "text",
                            "value": "The United Nations Security Council initially scheduled a meeting on Syria, but later canceled it."
                        },
                        {
                            "type": "text",
                            "value": "During meetings Wednesday on Capitol Hill, Obama told senators he wants to see the diplomatic effort play out, rather than pushing for a congressional resolution authorizing military action -- a proposal that faces heavy opposition in any event."
                        },
                        {
                            "type": "asset",
                            "value": "2787607"
                        },
                        {
                            "type": "text",
                            "value": "Russia — ally of Syria and opponent of U.S. military strikes — said Monday it would ask Bashar Assad's government to put chemical weapons under international control and have them dismantled; Syria announced Tuesday it would accept Russia's offer, and said it is willing to join a global ban on chemical weapons."
                        },
                        {
                            "type": "text",
                            "value": "The U.S. Senate, divided over a resolution authorizing military action against Syria, began exploring alternatives in light of the diplomatic moves."
                        },
                        {
                            "type": "text",
                            "value": "Obama is likely to address diplomatic efforts when he speaks at the White House at 9 p.m. ET Tuesday. He discussed the offer earlier in the day at separate meetings with Senate Republicans and Democrats on Capitol Hill."
                        },
                        {
                            "type": "text",
                            "value": "The president, who gave six television interviews Monday as a prelude to Tuesday night's speech, expressed skepticism of the Russia/Syria proposal, but said he and his team would study it."
                        },
                        {
                            "type": "text",
                            "value": "\"Let's see if we can come up with language that avoids a strike but accomplishes our key goals to make sure that these chemical weapons are not used,\" Obama told ABC News."
                        },
                        {
                            "type": "text",
                            "value": "Defense Secretary Chuck Hagel told a congressional committee Tuesday the administration is \"hopeful,\" but \"we must be clear-eyed and ensure it is not a stalling tactic by Syria and its Russian patrons.\""
                        },
                        {
                            "type": "text",
                            "value": "Obama discussed the possibility of having the United Nations supervise the collection and dismantling of Syria's chemical weapons in Tuesday phone calls with French President Francois Hollande and British Prime Minister David Cameron."
                        },
                        {
                            "type": "text",
                            "value": "The speech and the Russian proposal come amid intense public and congressional opposition to possible military strikes against Syria in response to that August attack."
                        },
                        {
                            "type": "text",
                            "value": "The Senate's top Republican, Mitch McConnell of Kentucky, announced he would oppose a resolution authorizing military force, saying \"there are just too many unanswered questions about our long-term strategy in Syria.\""
                        },
                        {
                            "type": "text",
                            "value": "Meanwhile, a bipartisan group of senators -- some of whom support intervention -- are working on an alternative that would require Syria to allow a United Nations team to remove chemical weapons within a certain time period, perhaps 45 to 60 days. If Syria doesn't comply, Obama would have the authority to launch military strikes."
                        },
                        {
                            "type": "text",
                            "value": "Assad has denied involvement in the chemical attack, and suggested he may retaliate against any U.S.-led attack."
                        },
                        {
                            "type": "text",
                            "value": "Obama is struggling to find support in Congress for a resolution authorizing military action in Syria, and votes have been delayed in the wake of the Russian proposal."
                        },
                        {
                            "type": "text",
                            "value": "During his string of television interviews, Obama acknowledged that he lacks public and congressional support for a military strike."
                        },
                        {
                            "type": "text",
                            "value": "An NBC News/Wall Street Journal poll released Tuesday finds that nearly 60% of Americans want their member of Congress to oppose the use of military force in Syria. Surveys show a force resolution could go down in both the Democratic-run Senate and the Republican-run House."
                        },
                        {
                            "type": "text",
                            "value": "In both his speech and briefings with Congress, Obama said he would stress the limited nature of possible military action. He told CBS that \"we have a very specific objective, a very narrow military option, and one that will not lead into some large-scale invasion of Syria.\""
                        },
                        {
                            "type": "text",
                            "value": "In tentatively embracing the Russian proposal, Obama and aides cited past friction with Russia, and Syria's history of shrouding its chemical weapons program in secrecy."
                        },
                        {
                            "type": "text",
                            "value": "\"I think you have to take it with a grain of salt initially,\" Obama told NBC News, but added that \"we are going to run this to ground.\""
                        },
                        {
                            "type": "text",
                            "value": "Russia, meanwhile, has consistently blocked U.S. efforts to get the Security Council to authorize a response to Syria over the use of chemical weapons."
                        },
                        {
                            "type": "text",
                            "value": "Syria has been only one of the friction points between the Obama administration and Russian President Vladimir Putin, including Russia's decision to grant temporary asylum to National Security Agency leaker Edward Snowden."
                        },
                        {
                            "type": "text",
                            "value": "Last month, Obama canceled a planned summit meeting with Putin."
                        },
                        {
                            "type": "text",
                            "value": "But Obama told PBS he spoke with Putin on the sidelines of last week's G-20 summit in St. Petersburg, Russia, and he has assigned Kerry to work with the Russians."
                        },
                        {
                            "type": "text",
                            "value": "\"My intention throughout this process has been to ensure that the blatant use of chemical weapons that we saw doesn't happen again,\" Obama told PBS."
                        },
                        {
                            "type": "text",
                            "value": "A rising number of lawmakers are expressing opposition to military force."
                        },
                        {
                            "type": "text",
                            "value": "Rep. Tulsi Gabbard, D-Hawaii, one of two female Iraq War veterans in Congress, said Obama's plan lacks \"a clear tactical objective,\" as well as \"an exit plan.\""
                        },
                        {
                            "type": "text",
                            "value": "Like many Republicans, Sen. Lamar Alexander of Tennessee said he would oppose authorization because of \"too much uncertainty about what comes next.\""
                        },
                        {
                            "type": "asset",
                            "value": "2759693"
                        }
                    ],
                    "id": 2791373,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Obama to address nation on Syria, pursues U.N. deal",
                        "shortHeadline": "Obama pursues U.N. deal on Syria",
                        "byline": "David Jackson, USA TODAY",
                        "editedHeadline": "Obama to address the nation on Syria tonight",
                        "storyabstract": "WASHINGTON — President Obama will address the nation Tuesday night on chemical weapons in Syria, as he and aides pursue a diplomatic proposal at the United Nations that has put military and congressional action on hold. But as talks began at the United Nations, the U.S. and Russia are at odds over the rules by which Syria might turn over its chemical weapons stockpile to international control. Officials said Secretary of State John Kerry would fly to Geneva, Switzerland, for a Thursday meeting with Russian Foreign Minister Sergey Lavrov. Obama spoke Tuesday with the leaders of France and the United Kingdom on whether the Russian proposal is workable, said a White House statement.",
                        "brief": "President Obama to give a prime-time speech on Syria Tuesday night.",
                        "storyhighlights": [
                            "President Obama will deliver a prime-time speech on Syria",
                            "Obama speaks as Russia offers a diplomatic proposal",
                            "Polls show public and congressional opposition to military action"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T16:35:47.881-04:00",
                            "feeddateline": "2013-09-10T16:35:47.881-04:00",
                            "published": "2013-09-10T11:45:10Z",
                            "lastupdated": "2013-09-10T20:35:48Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "world",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/world/2013/09/10/obama-syria-prime-time-speech-russia-france-congress/2791373/",
                            "shorturl": "http://usat.ly/1fUdbru",
                            "mobileurl": "http://usat.ly/1fUdbru"
                        },
                        "firstAsset": 2787607,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "news/world",
                        "topic": "syria-conflict"
                    },
                    "assets": [
                        {
                            "id": 2793127,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "3360",
                                    "oImageWidth": "4292",
                                    "sImageHeight": "391",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Pablo Martinez Monsivais, AP",
                                    "alternate": null,
                                    "title": "AP Obama US Syria",
                                    "caption": "President Obama walks along the West Wing Colonnade toward the Oval Office of the White House in Washington on Tuesday.",
                                    "datephototaken": "9-10-2013",
                                    "cutline": "President Obama walks along the West Wing Colonnade toward the Oval Office of the White House in Washington on Tuesday.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AP Obama US Syria.jpg",
                                    "imgIndex": "1378830822000",
                                    "imgUniqueName": "1378830822000-AP-Obama-US-Syria.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378830822000-AP-Obama-US-Syria.jpg",
                                    "smallbasename": "/-mm-/e780fdb66d65df8c759a863dab2aa5ae7bc79cae/r=500x391/local/-/media/USATODAY/test/2013/09/10/1378830822000-AP-Obama-US-Syria.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378830822000-AP-Obama-US-Syria.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/115258070b4f02683148d1be0ed466416533580a/c=746-128-3545-2930/local/-/media/USATODAY/test/2013/09/10/1378830822000-AP-Obama-US-Syria.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/a9de7d8f7340c0c8d03f63ffee9ec8506720114c/c=0-68-4292-3299/local/-/media/USATODAY/test/2013/09/10/1378830822000-AP-Obama-US-Syria.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/6806b0990a6e6d1f9a9ef1e2afe7d95fdad3c200/c=892-0-3407-3360/local/-/media/USATODAY/test/2013/09/10/1378830822000-AP-Obama-US-Syria.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/2793c19011912a8100f714b5a3ca30b7005bddd3/c=0-171-4292-2595/local/-/media/USATODAY/test/2013/09/10/1378830822000-AP-Obama-US-Syria.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/824c105aaca9f3caa6f7709f5ccee42b36d1ab12/c=1210-0-3090-3360/local/-/media/USATODAY/test/2013/09/10/1378830822000-AP-Obama-US-Syria.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/358d548c9e5f04a4224f6d05854586939bd5287a/c=188-0-4111-3360/local/-/media/USATODAY/test/2013/09/10/1378830822000-AP-Obama-US-Syria.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2787607,
                            "position": 2,
                            "type": "video",
                            "status": "published",
                            "url": "http://www.usatoday.com/videos/news/usanow/2013/09/09/2787607/",
                            "mobileUrl": "http://usat.ly/1fRbZVJ",
                            "ssts": {
                                "section": "news",
                                "subsection": "usanow",
                                "topic": "",
                                "subtopic": "",
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "brightcoveid": "2660060570001",
                                    "origin": "1",
                                    "viraldistribution": "true",
                                    "autoarchive": "true",
                                    "adsenabled": "True",
                                    "propertyid": "1",
                                    "brightcoveaccount": "29906170001",
                                    "datecreated": "9/9/2013 1:29:52 PM",
                                    "user": "jonbriggs",
                                    "status": "complete",
                                    "name": "How presidents argue for war | USA NOW video",
                                    "shortdescription": "How often do presidents step in front of a camera to present their case to the country? Shannon Rae Green hosts USA NOW, talking with USA TODAY Washington Bureau Chief Susan Page about what to expect in the president's upcoming address.",
                                    "tags": null,
                                    "thumbnail": "http://www.gannett-cdn.com/-mm-/33d97f8a03d5ea06baca0f7a30eca34c8bd87643/r=500x281/local/-/media/USATODAY/USATODAY/2013/09/09/1378747845000-President-Obama.jpg",
                                    "videostill": "http://www.gannett-cdn.com/media/USATODAY/USATODAY/2013/09/09/1378747845000-President-Obama.jpg",
                                    "startdate": null,
                                    "enddate": null,
                                    "length": "04:29",
                                    "imageid": "2787629",
                                    "thumbnailTiny": "http://www.gannett-cdn.com/-mm-/ca61d0b69aea21bcc7b0bee57b4d51d18cde194f/c=241-0-1678-1080&r=115x86/local/-/media/USATODAY/USATODAY/2013/09/09/1378747845000-President-Obama.jpg",
                                    "bcunfilteredtoken": null,
                                    "bcreadtoken": null,
                                    "bcwritetoken": null,
                                    "credit": "USA TODAY, USA NOW, Kaveh Rezaei,",
                                    "excludemobile": "False",
                                    "excluderightnow": "False",
                                    "majorchange": "False",
                                    "content-protection-state": "free",
                                    "lastaction": "Published",
                                    "interactive": "false",
                                    "topic": "news,news_nation,news_usanow,USA-NOW",
                                    "series": "USA-NOW",
                                    "aws": "news/usanow"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/d9e71041d07112efa8fb5b093a06e0712c403629/c=403-0-1482-1080/local/-/media/USATODAY/USATODAY/2013/09/09/1378747845000-President-Obama.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/f073230815e59c17b5a11090d9040cd9913c0471/c=238-0-1674-1080/local/-/media/USATODAY/USATODAY/2013/09/09/1378747845000-President-Obama.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/c0ddc9c04f987a3f14cbc5070fa0e696df0d91eb/c=499-0-1309-1080/local/-/media/USATODAY/USATODAY/2013/09/09/1378747845000-President-Obama.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/047c4e83d27f9bc5845d05a09ed60ffc1db25f17/c=3-0-1912-1080/local/-/media/USATODAY/USATODAY/2013/09/09/1378747845000-President-Obama.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/c1b4809bc56df811a49752c1622ab34221fb4855/c=602-0-1205-1080/local/-/media/USATODAY/USATODAY/2013/09/09/1378747845000-President-Obama.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/13b86114a662ef4487ebec003c07226b3fb8993a/c=311-0-1574-1080/local/-/media/USATODAY/USATODAY/2013/09/09/1378747845000-President-Obama.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2759693,
                            "position": 3,
                            "type": "Interactive:Sequencer",
                            "status": "Published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": "news",
                                "subsection": "world",
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "interactivename": "usat 2013-08-21 syria primer",
                                    "name": "Understanding Syria: A visual guide to the latest crisis in the middle east ",
                                    "suppressad": "False",
                                    "collapsebuttons": "False",
                                    "longdescription": "Syria, once the center of the Islamic empire, has been the scene of many conquests throughout history before its present incarnation as a dictatorship led by a small Shiite Muslim sect battling a rebellion of Sunni Muslims. As a result, this land of mountains, fertile plains and desert is home to many ethnicities and religious groups.",
                                    "source": "AP, USA TODAY research",
                                    "origin": "usatoday",
                                    "editor": "thargro",
                                    "datecreated": "9/10/2013 2:42:56 PM",
                                    "datepublished": "9/10/2013 2:42:56 PM",
                                    "credit": "Kevin A. Kepple, Anne R. Carey, Emaun Kashfipour, Tory Hargro, Jerry Mosemak and Oren Dorell, USA TODAY",
                                    "permalink": "http://www.usatoday.com/interactive/2759693/understanding-syria-a-visual-guide-to-the-latest-crisis-in-the-middle-east-",
                                    "buttonNumbers": null,
                                    "buttonSize": null,
                                    "imageEffect": "fade-transition",
                                    "globalmage": null,
                                    "interactive": "true",
                                    "aws": "news/world"
                                },
                                "crops": null,
                                "document": "{\"events\":{\"e\":[{\"boxHead\":\"How we got here\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/6f4dc654-3bd0-4465-940e-2eb5f54f1a4a-01c_how.png\",\"boxVideo\":null},{\"boxHead\":\"Defeat government\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/53b27a43-463e-4136-b71b-12cbca6fe8d0-02a_gov_defeat.png\",\"boxVideo\":null},{\"boxHead\":\"Defeat rebels\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/6f4dc654-3bd0-4465-940e-2eb5f54f1a4a-03b_reb_defeat.png\",\"boxVideo\":null},{\"boxHead\":\"Coalition\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/a3b3ac98-bf99-4f8c-84f3-796ee10bffe5-04a_coalition_a.png\",\"boxVideo\":null},{\"boxHead\":\"Opposition\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/a3b3ac98-bf99-4f8c-84f3-796ee10bffe5-05_opposition_a.png\",\"boxVideo\":null},{\"boxHead\":\"Chemical and missile sites\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/2ecea590-31fb-481b-a0a1-b067cf9f397e-06_sites_a.png\",\"boxVideo\":null},{\"boxHead\":\"Military bases\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/873b3e0d-ef98-4b37-bc61-8b917e442c76-07_targets.png\",\"boxVideo\":null},{\"boxHead\":\"Chemical attacks\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/873b3e0d-ef98-4b37-bc61-8b917e442c76-08_chem_attacks.png\",\"boxVideo\":null},{\"boxHead\":\"Refugees\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/873b3e0d-ef98-4b37-bc61-8b917e442c76-09_refugees.png\",\"boxVideo\":null}]}}"
                            }
                        },
                        {
                            "id": 2791515,
                            "position": 4,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "2764",
                                    "oImageWidth": "3864",
                                    "sImageHeight": "357",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Pablo Martinez Monsivais, AP",
                                    "alternate": null,
                                    "title": "XXX AP United States Syria AP Poll_001",
                                    "caption": "President Obama",
                                    "datephototaken": "9-6-2013",
                                    "cutline": "President Obama",
                                    "orientation": "horizontal",
                                    "OrigImageName": "XXX AP United States Syria AP Poll_001.jpg",
                                    "imgIndex": "1378811523000",
                                    "imgUniqueName": "1378811523000-XXX-AP-United-States-Syria-AP-Poll-001.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378811523000-XXX-AP-United-States-Syria-AP-Poll-001.jpg",
                                    "smallbasename": "/-mm-/5b3cd9256a3484ff8674798dea4b57a748398d76/r=500x357/local/-/media/USATODAY/test/2013/09/10/1378811523000-XXX-AP-United-States-Syria-AP-Poll-001.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378811523000-XXX-AP-United-States-Syria-AP-Poll-001.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/e154e799adb270ba7610adb5e5bad15b492b3703/c=533-0-3292-2764/local/-/media/USATODAY/test/2013/09/10/1378811523000-XXX-AP-United-States-Syria-AP-Poll-001.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/1e578519a3e5d7aaef7b99fac5a2b7c1346d860f/c=69-0-3740-2764/local/-/media/USATODAY/test/2013/09/10/1378811523000-XXX-AP-United-States-Syria-AP-Poll-001.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/8e8242c558b6cdf2e658302620e47b69dd03025d/c=69-0-2140-2764/local/-/media/USATODAY/test/2013/09/10/1378811523000-XXX-AP-United-States-Syria-AP-Poll-001.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/df19a4f6e859d0b4b2a466a085a8cd496c3ef89a/c=0-69-3864-2253/local/-/media/USATODAY/test/2013/09/10/1378811523000-XXX-AP-United-States-Syria-AP-Poll-001.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/f0ac6b60b7b6c1e44964f7e52f2a3ea6da9c6000/c=224-0-1769-2764/local/-/media/USATODAY/test/2013/09/10/1378811523000-XXX-AP-United-States-Syria-AP-Poll-001.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/a8c756fdd242fa1455ce45bed36233ab1b442ea2/c=309-0-3539-2764/local/-/media/USATODAY/test/2013/09/10/1378811523000-XXX-AP-United-States-Syria-AP-Poll-001.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2791297"
                        },
                        {
                            "type": "text",
                            "value": "Stocks ended higher Tuesday with the tech-laden Nasdaq composite index hitting a 13-year high and the Dow Jones industrial average adding nearly 130 points as concerns about Syria eased. "
                        },
                        {
                            "type": "text",
                            "value": "The Dow Jones closed up 127.94 points, 0.9%, to 15,191.06 -- a four week high, and the benchmark Standard &amp; Poor's 500 index gained 12.28 points, 0.7%, to end at 1,683.99 -- also a four-week high."
                        },
                        {
                            "type": "text",
                            "value": "The Nasdaq closed up 22.84 points, 0.6%, to 3,729.02, its highest close since Sept. 28, 2000. Still, it's 35% below its all-time high reached back at the height of the dotcom tech stock craze."
                        },
                        {
                            "type": "text",
                            "value": "The price of oil, which was trading above $110 a barrel on Friday -- a 22-month high --  closed down $2.25, or 2.1%, to $107.25 per barrel in futures trading on the New York Mercantile Exchange. Earlier in the session, the price dipped below $107 as investors began to believe Syria tensions are abating. "
                        },
                        {
                            "type": "text",
                            "value": "Driving bullish sentiment on Wall Street: Syria has accepted Russia's proposal to place its chemical weapons under international control so they can be dismantled. The West has accused Syrian President Bashar Assad of using the weapons on civilians in the country's civil war."
                        },
                        {
                            "type": "text",
                            "value": "Traders sold other safe-haven assets as the threat of an imminent U.S. military strike on Syria faded. Gold fell  $22, or 1.6%, to $1,365 an ounce, and the yield on the benchmark 10-year Treasury note rose to 2.96% from 2.91% Monday as investors sold government bonds, causing the price to fall and the yield to rise."
                        },
                        {
                            "type": "text",
                            "value": "The Dow got a shakeup on Tuesday, when it was announced the benchmark index is dropping Bank of America, Hewlett-Packard, and Alcoa. The Dow's level won't change bu they're being replaced by Goldman Sachs, Nike, and Visa, which have higher share prices. The change becomes effective at the start of trading on Sept. 23. The Dow is made up of 30 stocks. S&amp;P Dow Jones Indices says the change was made to diversify sector and industry representation in the index."
                        },
                        {
                            "type": "text",
                            "value": "The Dow ended Monday up 0.9% to 15,063.12. The S&amp;P 500 closed up 1% to 1,671.71. The tech-laden Nasdaq closed 1.3% higher at 3,706.18."
                        },
                        {
                            "type": "text",
                            "value": "Economic data released in China Tuesday boosted stocks in the region. The mainland's Shanghai composite index rose 1.2% to close at 2,237.98 and Hong Kong's Hang Seng index climbed 1% to finish at 22,976.65 after industrial production and retail sales in the nation accelerated. In Japan, the Nikkei 225 index shot up 1.5% higher to end at 14,423.36."
                        },
                        {
                            "type": "text",
                            "value": "Markets in Europe saw strong gains. Britain's FTSE 100 benchmark index closed up 0.8% to 6,583.99. Germany's DAX 30 index jumped 2.1% to finish at 8,446.54, and France's CAC 40 index gained 1.9% to end the trading session at 4,116.64."
                        },
                        {
                            "type": "text",
                            "value": "Contributing: The Associated Press"
                        }
                    ],
                    "id": 2791289,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Nasdaq at 13-year high as Syria fears ease",
                        "shortHeadline": "Nasaq hits 13-year high as Syria fears ease",
                        "byline": "Kim Hjelmgaard, USA TODAY",
                        "editedHeadline": null,
                        "storyabstract": "Stocks ended higher Tuesday with the tech-laden Nasdaq composite index hitting a 13-year high and the Dow Jones industrial average adding nearly 130 points as concerns about Syria eased.  The Dow Jones closed up 127.94 points, 0.9%, to 15,191.06 -- a four week high, and the benchmark Standard &amp; Poor's 500 index gained 12.28 points, 0.7%, to end at 1,683.99 -- also a four-week high. The Nasdaq closed up 22.84 points, 0.6%, to 3,729.02, its highest close since Sept. 28, 2000. Still, it's 35% below its all-time high reached back at the height of the dotcom tech stock craze. The price of oil, which was trading above $110 a barrel on Friday -- a 22-month high --  closed down $2.25, or 2.1%, to $107.25 per barrel in futures trading on the New York Mercantile Exchange. Earlier in the session, the price dipped below $107 as investors began to believe Syria tensions are abating.",
                        "brief": "Investors shed safe-haven assets and dive back into stocks as Middle East crisis abates.",
                        "storyhighlights": [
                            "Apple unveils cheaper%2C more colorful iPhone",
                            "Price of crude oil declines as Syria tensions subside",
                            "China economic data continues to boost global markets"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T16:38:01.421-04:00",
                            "feeddateline": "2013-09-10T16:38:01.421-04:00",
                            "published": "2013-09-10T07:17:00Z",
                            "lastupdated": "2013-09-10T20:38:02Z"
                        },
                        "ssts": {
                            "section": "money",
                            "subsection": "markets",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/money/markets/2013/09/10/stocks-tuesday-apple-iphone/2791289/",
                            "shorturl": "http://usat.ly/17N3z0H",
                            "mobileurl": "http://usat.ly/17N3z0H"
                        },
                        "firstAsset": 2791297,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "money/markets",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2791297,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "2000",
                                    "oImageWidth": "3000",
                                    "sImageHeight": "333",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Spencer Platt, Getty Images",
                                    "alternate": null,
                                    "title": "nyse",
                                    "caption": "Traders work on the floor of the New York Stock Exchange on Sept. 5, 2013.",
                                    "datephototaken": "9-5-2013",
                                    "cutline": "Traders work on the floor of the New York Stock Exchange on Sept. 5, 2013.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "GTY 179562173.jpg",
                                    "imgIndex": "1378795964000",
                                    "imgUniqueName": "1378795964000-GTY-179562173.jpg",
                                    "isImageVisitedByUser": "False",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378795964000-GTY-179562173.jpg",
                                    "smallbasename": "/-mm-/4044b1e7645488621f157de466cf1a990870caa2/r=500x333/local/-/media/USATODAY/test/2013/09/10/1378795964000-GTY-179562173.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378795964000-GTY-179562173.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/532ea2d8814f472d2abfcc30f26012774d21f0c4/c=510-0-2508-2000/local/-/media/USATODAY/test/2013/09/10/1378795964000-GTY-179562173.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/ba6170320dba09dc631fc0284b1644533b2dc41d/c=222-0-2880-2000/local/-/media/USATODAY/test/2013/09/10/1378795964000-GTY-179562173.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/45a21ef8aeddf7842f27c13b85fd47b6fb6b85a9/c=594-0-2094-2000/local/-/media/USATODAY/test/2013/09/10/1378795964000-GTY-179562173.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/0d8b59fc55ce9f681328fab5eaaff9f6ac703ab0/c=0-192-3000-1885/local/-/media/USATODAY/test/2013/09/10/1378795964000-GTY-179562173.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/39df4bb7184079b47415a063cc6246452d59fa61/c=1116-0-2232-2000/local/-/media/USATODAY/test/2013/09/10/1378795964000-GTY-179562173.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/02ec8e7275a1dd0fd382c1a06560f255f79ec0a0/c=504-0-2844-2000/local/-/media/USATODAY/test/2013/09/10/1378795964000-GTY-179562173.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "id": 2794605,
                    "position": 0,
                    "type": "video",
                    "status": "published",
                    "url": "http://www.usatoday.com/videos/tech/personal/2013/09/10/2794605/",
                    "mobileUrl": "http://usat.ly/1fWkdMc",
                    "ssts": {
                        "section": "tech",
                        "subsection": "personal",
                        "topic": "",
                        "subtopic": "",
                        "storysubject": null
                    },
                    "metaData": {
                        "items": {
                            "brightcoveid": "2662970537001",
                            "name": "See the two new iPhone models",
                            "shortdescription": "Apple's latest iPhones will come in a bevy of colors and two distinct designs, a cheaper one made of plastic and another that aims to be \"the gold standard of smartphones\" and reads your fingerprint. (Sept. 10)",
                            "tags": "consumer electronics,technology,national,Mobile phones,business",
                            "source": "AP",
                            "origin": "AP",
                            "autoarchive": "true",
                            "adsenabled": "True",
                            "startdate": null,
                            "enddate": null,
                            "gannetttracking": "urn:publicid:ap.org:672e860f60f241baa48d8df9bf24210e",
                            "longdescription": null,
                            "viraldistribution": "true",
                            "user": "mafowler",
                            "datecreated": "9/10/2013 3:31:43 PM",
                            "credit": "AP",
                            "propertyid": "1",
                            "brightcoveaccount": "29906170001",
                            "thumbnail": "http://videos.usatoday.net/Brightcove2/29906170001/2013/09/29906170001_2663084498001_thumb-04e88b848d9f031e3d0f4a504700889f.jpg?pubId=29906170001",
                            "videostill": "http://videos.usatoday.net/Brightcove2/29906170001/2013/09/29906170001_2663084498001_thumb-04e88b848d9f031e3d0f4a504700889f.jpg?pubId=29906170001",
                            "status": "complete",
                            "length": "01:22",
                            "excludemobile": "False",
                            "excluderightnow": "False",
                            "majorchange": "False",
                            "content-protection-state": "free",
                            "lastaction": "Published",
                            "interactive": "false",
                            "topic": "tech",
                            "aws": "tech/products"
                        },
                        "crops": null,
                        "document": null
                    }
                },
                {
                    "id": 2792761,
                    "position": 0,
                    "type": "video",
                    "status": "published",
                    "url": "http://www.usatoday.com/videos/news/usanow/2013/09/10/2792761/",
                    "mobileUrl": "http://usat.ly/1fVqmIz",
                    "ssts": {
                        "section": "news",
                        "subsection": "usanow",
                        "topic": "",
                        "subtopic": "",
                        "storysubject": null
                    },
                    "metaData": {
                        "items": {
                            "brightcoveid": "2662671497001",
                            "origin": "1",
                            "viraldistribution": "true",
                            "autoarchive": "true",
                            "adsenabled": "True",
                            "propertyid": "1",
                            "brightcoveaccount": "29906170001",
                            "datecreated": "9/10/2013 11:46:48 AM",
                            "user": "krezaei",
                            "status": "complete",
                            "name": "Gotcha! Kimmel's fire twerk and other YouTube hoaxes",
                            "shortdescription": "Natalie DiBlasio hosts USA NOW for Sept. 10, 2013, revealing Jimmy Kimmel's fire twerk and other hoaxes.",
                            "tags": null,
                            "thumbnail": "http://www.gannett-cdn.com/-mm-/33d97f8a03d5ea06baca0f7a30eca34c8bd87643/r=500x281/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                            "videostill": "http://www.gannett-cdn.com/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                            "startdate": null,
                            "enddate": null,
                            "length": "02:30",
                            "imageid": "2792773",
                            "thumbnailTiny": "http://www.gannett-cdn.com/-mm-/79345de1105098bc83d9959afbaa38462349c9a5/c=307-0-1743-1080&r=115x86/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                            "bcunfilteredtoken": null,
                            "bcreadtoken": null,
                            "bcwritetoken": null,
                            "credit": "USA TODAY, USA NOW, Kaveh Rezaei,",
                            "excludemobile": "False",
                            "excluderightnow": "False",
                            "majorchange": "False",
                            "content-protection-state": "free",
                            "lastaction": "Published",
                            "interactive": "false",
                            "topic": "news,news_nation,news_usanow,USA-NOW",
                            "series": "USA-NOW",
                            "aws": "news/usanow"
                        },
                        "crops": {
                            "1_1": "http://www.gannett-cdn.com/-mm-/5d31c1b78a25586efb70e7e00ee8dc4bc4f3e3dd/c=449-0-1528-1080/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                            "4_3": "http://www.gannett-cdn.com/-mm-/75d4484055e00983b06990f6cd16943b732aa418/c=307-0-1743-1080/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                            "3_4": "http://www.gannett-cdn.com/-mm-/346df45532b46368868f28f82b30b33e2b1ee51c/c=549-0-1359-1080/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                            "16_9": "http://www.gannett-cdn.com/-mm-/c9502e949ca9c5647cfa011817e4573291c0eb90/c=7-0-1916-1080/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                            "9_16": "http://www.gannett-cdn.com/-mm-/6b73cf4af22851d6a414a210f591a63835c6032b/c=679-0-1282-1080/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                            "front_thumb": "http://www.gannett-cdn.com/-mm-/f8891068735fb5a480da77c4aaf1ef7fa66aa99d/c=410-0-1674-1080/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg"
                        },
                        "document": null
                    }
                },
                {
                    "id": 2793431,
                    "position": 0,
                    "type": "video",
                    "status": "published",
                    "url": "http://www.usatoday.com/videos/tech/sciencefair/2013/09/10/2793431/",
                    "mobileUrl": "http://usat.ly/17OcRcF",
                    "ssts": {
                        "section": "tech",
                        "subsection": "sciencefair",
                        "topic": "",
                        "subtopic": "",
                        "storysubject": null
                    },
                    "metaData": {
                        "items": {
                            "brightcoveid": "2662809481001",
                            "name": "Glorious fireball lights up sky",
                            "shortdescription": "Astronomers say this baseball-sized meteor was likely a fragment off of a comet as it lit up the sky over Georgia.",
                            "tags": "vpcseen,meteor,vpc,National News,viral,tellus science museum,Shooting Star,astronomy,Alabama,water cooler,offbeat,fireball",
                            "source": "VPC",
                            "origin": "VPC",
                            "autoarchive": "true",
                            "adsenabled": "True",
                            "startdate": null,
                            "enddate": null,
                            "gannetttracking": "VPC_VPCSEEN METEOR GEORGIA SKY-W091013",
                            "longdescription": null,
                            "viraldistribution": "true",
                            "user": "mafowler",
                            "datecreated": "9/10/2013 1:21:29 PM",
                            "credit": "VPC",
                            "propertyid": "1",
                            "brightcoveaccount": "29906170001",
                            "thumbnail": "http://bc_gvpc.edgesuite.net/img/963482463001/201309/2514/963482463001_2662736595001_thumbnail-for-video-2662747315001.jpg?pubId=963482463001",
                            "videostill": "http://bc_gvpc.edgesuite.net/img/963482463001/201309/1514/963482463001_2662736596001_video-still-for-video-2662747315001.jpg?pubId=963482463001",
                            "status": "complete",
                            "length": "00:30",
                            "excludemobile": "False",
                            "excluderightnow": "False",
                            "majorchange": "False",
                            "content-protection-state": "free",
                            "lastaction": "Published",
                            "interactive": "false",
                            "topic": "tech",
                            "aws": "tech/science"
                        },
                        "crops": null,
                        "document": null
                    }
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2793389"
                        },
                        {
                            "type": "text",
                            "value": "Men with smaller testicles are more likely than their well-endowed brethren to be involved in the care of their toddlers,  anthropologists at Emory University report."
                        },
                        {
                            "type": "text",
                            "value": "The higher the testosterone levels and larger the testicles, the smaller the amount of direct paternal caregiving by dads as reported by parents in the study."
                        },
                        {
                            "type": "text",
                            "value": "\"Our data suggest that the biology of human males reflects a trade-off between mating and parenting,\" Emory anthropologist James Rilling, whose lab conducted the research, reports on the Atlanta university's website. The Proceedings of the National Academy of Sciences published details of the study this week."
                        },
                        {
                            "type": "text",
                            "value": "The goal of the research, Rilling says, was to determine why some fathers work harder at parenting than others. \"Previous studies have shown that children with more involved fathers have better social, psychological and educational outcomes,\" he told the school's website."
                        },
                        {
                            "type": "text",
                            "value": "Rilling noted that \"life history theory\" holds that evolution optimizes use of resources toward mating or parenting to generate the largest number and healthiest offspring."
                        },
                        {
                            "type": "text",
                            "value": "The report notes that economic, social and cultural factors could also influence a father's level of caregiving. Although statistically significant, the correlation between testicle size and caregiving was not perfect."
                        },
                        {
                            "type": "text",
                            "value": "\"The fact that we found this variance suggests personal choice,\" Rilling says."
                        },
                        {
                            "type": "text",
                            "value": "The study included 70 biological fathers who were living with their toddler and its biological mother. The mothers and fathers were interviewed separately about the father's involvement in tasks such as changing diapers, feeding and bathing a child and caring for a sick child."
                        },
                        {
                            "type": "text",
                            "value": "Magnetic resonance imaging also was used to measure brain activity and \"testicular volume.\""
                        },
                        {
                            "type": "text",
                            "value": "\"We're assuming that testes size drives how involved the fathers are,\" Rilling says, \"But it could also be that when men become more involved as caregivers, their testes shrink. Environmental influences can change biology.\""
                        },
                        {
                            "type": "text",
                            "value": "Some researchers question the study's findings."
                        },
                        {
                            "type": "text",
                            "value": "Lee Gettler, an anthropologist at Notre Dame who has conducted research on how men respond physically to father-child interactions, says the study assumes that larger testicles translate to more \"mating\" by men. But they don't, Gettler told CNN. \"Large testes do not make you act promiscuously or badly as a parent.\""
                        },
                        {
                            "type": "text",
                            "value": "Abass Alavi, a researcher with the University of Pennsylvania, told CNN that size doesn't even determine how much sperm is being created."
                        },
                        {
                            "type": "text",
                            "value": "\"What is important is how much sperm the testicle is making,\" he said. \"Some geniuses have very small brains.\""
                        },
                        {
                            "type": "text",
                            "value": "Follow John Bacon on Twitter, @jmbacon"
                        }
                    ],
                    "id": 2792051,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Size matters? Testicle size linked to nurturing",
                        "shortHeadline": "Size matters? Testicle size linked to nurturing",
                        "byline": "John Bacon, USA TODAY",
                        "editedHeadline": null,
                        "storyabstract": "Men with smaller testicles are more likely than their well-endowed brethren to be involved in the care of their toddlers,  anthropologists at Emory University report. The higher the testosterone levels and larger the testicles, the smaller the amount of direct paternal caregiving by dads as reported by parents in the study. \"Our data suggest that the biology of human males reflects a trade-off between mating and parenting,\" Emory anthropologist James Rilling, whose lab conducted the research, reports on the Atlanta university's website. The Proceedings of the National Academy of Sciences published details of the study this week. The goal of the research, Rilling says, was to determine why some fathers work harder at parenting than others. \"Previous studies have shown that children with more involved fathers have better social, psychological and educational outcomes,\" he told the school's website.",
                        "brief": "Men with smaller testicles are more likely to be involved with their kid's care, a study says.",
                        "storyhighlights": null,
                        "dates": {
                            "embargodate": "2013-09-10T16:14:15.604-04:00",
                            "feeddateline": "2013-09-10T16:14:15.604-04:00",
                            "published": "2013-09-10T15:32:09Z",
                            "lastupdated": "2013-09-10T20:14:16Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "nation",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/nation/2013/09/10/testicles-testes-parenting/2792051/",
                            "shorturl": "http://usat.ly/17NZNEr",
                            "mobileurl": "http://usat.ly/17NZNEr"
                        },
                        "firstAsset": 2793389,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "news/national",
                        "topic": "health-and-wellness"
                    },
                    "assets": [
                        {
                            "id": 2793389,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "3658",
                                    "oImageWidth": "2438",
                                    "sImageHeight": "400",
                                    "sImageWidth": "266",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:auto;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Comstock Images via Getty Images",
                                    "alternate": null,
                                    "title": "XXX_78468590",
                                    "caption": "A baby is photographed in a studio.",
                                    "datephototaken": "4-2-2013",
                                    "cutline": "A baby is photographed in a studio.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "XXX_78468590.jpg",
                                    "imgIndex": "1378833180000",
                                    "imgUniqueName": "1378833180000-XXX-78468590.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/10/1378833180000-XXX-78468590.jpg",
                                    "smallbasename": "/-mm-/b2e9b23cd767d8a10443c055f0220c24d0200e88/r=266x400/local/-/media/USATODAY/GenericImages/2013/09/10/1378833180000-XXX-78468590.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/10/1378833180000-XXX-78468590.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/64ed0790551162268bee8d09d24467fbdef9ad7f/c=302-1508-2438-3639/local/-/media/USATODAY/GenericImages/2013/09/10/1378833180000-XXX-78468590.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/16bfac3626d6c2099f4aacd7ec2f54b82f4340f6/c=0-1646-2438-3475/local/-/media/USATODAY/GenericImages/2013/09/10/1378833180000-XXX-78468590.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/0c12a5b7981f0f250bbe423174265b1cecee71ce/c=467-1069-2410-3648/local/-/media/USATODAY/GenericImages/2013/09/10/1378833180000-XXX-78468590.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/10c8861ecadb0549b76bf861800954ab5efcc49d/c=403-1627-2438-2761/local/-/media/USATODAY/GenericImages/2013/09/10/1378833180000-XXX-78468590.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/f70e12b01234862ee0ec0e4fe71968bd52b9f54c/c=513-438-2318-3648/local/-/media/USATODAY/GenericImages/2013/09/10/1378833180000-XXX-78468590.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/fe8af24b03059fb9d4f1d522e752567a4c29efb0/c=311-1627-2428-3429/local/-/media/USATODAY/GenericImages/2013/09/10/1378833180000-XXX-78468590.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2792225,
                            "position": 2,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "600",
                                    "oImageWidth": "511",
                                    "sImageHeight": "400",
                                    "sImageWidth": "340",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Emory University",
                                    "alternate": null,
                                    "title": "JAMES RILLING",
                                    "caption": "Emory anthropologist James K. Rilling",
                                    "datephototaken": null,
                                    "cutline": "Emory anthropologist James K. Rilling",
                                    "orientation": "horizontal",
                                    "OrigImageName": "JAMES RILLING.jpg",
                                    "imgIndex": "1378824800000",
                                    "imgUniqueName": "1378824800000-JAMES-RILLING.jpg",
                                    "isImageVisitedByUser": "False",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/10/1378824800000-JAMES-RILLING.jpg",
                                    "smallbasename": "/-mm-/ed553672d376915b2c2ef2e08efb0677bd8d7a93/r=340x400/local/-/media/USATODAY/GenericImages/2013/09/10/1378824800000-JAMES-RILLING.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/10/1378824800000-JAMES-RILLING.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/fd31888036df547775222c7a967df3d34548e700/c=18-18-492-492/local/-/media/USATODAY/GenericImages/2013/09/10/1378824800000-JAMES-RILLING.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/866fdbd8b256c64da4ac36c96dc9e50ef402880f/c=13-132-483-486/local/-/media/USATODAY/GenericImages/2013/09/10/1378824800000-JAMES-RILLING.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/0e4e3e19c9a8574b4657bb3dafd035f8b0d73ee9/c=45-27-459-579/local/-/media/USATODAY/GenericImages/2013/09/10/1378824800000-JAMES-RILLING.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/0d41aab5ed2e29a17f14c728690ece99479e4815/c=15-165-486-432/local/-/media/USATODAY/GenericImages/2013/09/10/1378824800000-JAMES-RILLING.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/17f7bdc2744e5eac3798fa80f19537ff8624f3d9/c=102-36-408-582/local/-/media/USATODAY/GenericImages/2013/09/10/1378824800000-JAMES-RILLING.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/b9416dd0570e7400d6cf8df8de6efeb80ec75cde/c=36-75-485-459/local/-/media/USATODAY/GenericImages/2013/09/10/1378824800000-JAMES-RILLING.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "text",
                            "value": "The Dow Jones announced that Goldman Sachs Group, Visa and Nike will be added to the industrial average. They will replace Hewlett-Packard, Bank of America and Alcoa."
                        },
                        {
                            "type": "asset",
                            "value": "2791775"
                        },
                        {
                            "type": "text",
                            "value": "The changes, will take effect with the opening of trading on Monday, Sept. 23. Its level won't change when the new components are added."
                        },
                        {
                            "type": "text",
                            "value": "The index changes were prompted by the low stock price of the three companies slated for removal and the index committee's desire to diversify the sector and industry group representation of the Index."
                        },
                        {
                            "type": "text",
                            "value": "David Blitzer, managing director and chairman of the index committee, said in a conference call Tuesday that it will be the first three-for three change in the Dow since 2004."
                        },
                        {
                            "type": "text",
                            "value": "\"We are removing three lowest priced stocks and replacing them with stocks with higher prices,\" he said. Alcoa, which is trading at about $8, is the lowest priced stock in the index, he said. This will bring down the weight of the other 27 companies in the index."
                        },
                        {
                            "type": "text",
                            "value": "Unlike most indexes, the Dow is an average, and the higher a component's price, the greater impact it has on the index. Stocks with low per-share prices become dwarfed by those with large per-share prices, reducing the effectiveness of the Dow to mirror the market."
                        },
                        {
                            "type": "text",
                            "value": "Visa will now be the Dow's second-largest component, just behind IBM, and Goldman Sachs will be the third-largest component. Nike will weigh in at number 18, just behind DuPont. "
                        },
                        {
                            "type": "text",
                            "value": "The additions were also made to better improve the sector representation of the Dow, according to S&amp;P Dow Jones Indices. Nike adds to the Dow's consumer discretionary sector weighing. Visa is considered to be a technology company that is focused on payment networks, a corner of technology not represented before. Meanwhile, adding Goldman Sachs boosts the Dow's weighting in investment banking. Bank of America is a closer peer to another Dow member: JP MorganChase."
                        },
                        {
                            "type": "text",
                            "value": "The additions and deletions will mean that a $1 price gain in any one component will equal a 6.5 point-change in the Dow, vs. 7.7 points in the old Dow, according to Bespoke Investment Group."
                        },
                        {
                            "type": "text",
                            "value": "The Dow was created by Charles Dow in 1896 and originally had 11 stocks. General Electric, added in 1928, is the oldest current Dow component. "
                        },
                        {
                            "type": "text",
                            "value": "Changes to the Dow are relatively rare. The last time any additions or removals were made occurred on June 8, 2009 when computer networking equipment maker Cisco Systems replaced financial firm Citigroup."
                        },
                        {
                            "type": "text",
                            "value": "All told, there were eight additions and eight deletion made to the Dow between 1999 and 2009. The newest stocks added are: insurer American International Group, drugmaker Pfizer, telecom Verizon, bank Bank of America, energy company Chevron, food company Kraft, insurer Travelers and Cisco. "
                        },
                        {
                            "type": "text",
                            "value": "Stocks removed during that time period: International Paper, General Motors, AT&amp;T, Allied Chemical &amp; Dye, photo firm Eastman Kodak, food company Altria, Citigroup and American International. AIG was added in April 2004 and removed in September 2008. "
                        },
                        {
                            "type": "text",
                            "value": "Investors might wonder about how earnings season might change as a result of the change. Alcoa's earnings report often marks the unofficial start of earnings season, in part, because it was a Dow component. \"The composition of the Dow Jones Industrial Average has no impact on Alcoa's ability to successfully execute our strategy, and we remain focused on delivering shareholder value,\" the company said in a statement."
                        }
                    ],
                    "id": 2791723,
                    "type": "text",
                    "source": "USA TODAY",
                    "metaData": {
                        "headline": "Dow 30 adds Goldman Sachs, Nike and Visa",
                        "shortHeadline": "Dow 30 adds Goldman Sachs, Nike, Visa",
                        "byline": "Rodney Brooks, John Waggoner and Matt Krantz, USA TODAY",
                        "editedHeadline": null,
                        "storyabstract": "The Dow Jones announced that Goldman Sachs Group, Visa and Nike will be added to the industrial average. They will replace Hewlett-Packard, Bank of America and Alcoa. The changes, will take effect with the opening of trading on Monday, Sept. 23. Its level won't change when the new components are added. The index changes were prompted by the low stock price of the three companies slated for removal and the index committee's desire to diversify the sector and industry group representation of the Index. David Blitzer, managing director and chairman of the index committee, said in a conference call Tuesday that it will be the first three-for three change in the Dow since 2004.",
                        "brief": "Low share prices of Alcoa, HP, B of A spur removal from benchmark 30-stock average.",
                        "storyhighlights": [
                            "Changes to 30-stock index were prompted by low stock price of three companies being dropped",
                            "The changes will be effective at the close of trading Friday%2C Sept. 20",
                            "Change is the first three-for-three adjustment since 2004"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T16:18:36.831-04:00",
                            "feeddateline": "2013-09-10T16:18:36.831-04:00",
                            "published": "2013-09-10T13:00:07Z",
                            "lastupdated": "2013-09-10T20:18:37Z"
                        },
                        "ssts": {
                            "section": "money",
                            "subsection": "markets",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/money/markets/2013/09/10/changes-dow-jones-industrial-average/2791723/",
                            "shorturl": "http://usat.ly/17NDjmU",
                            "mobileurl": "http://usat.ly/17NDjmU"
                        },
                        "firstAsset": 2791775,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": null,
                        "breakingNewsId": 0,
                        "aws": "money/markets",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2791775,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "1422",
                                    "oImageWidth": "2900",
                                    "sImageHeight": "245",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Bebeto Matthews, AP",
                                    "alternate": null,
                                    "title": "AP Investors Mood",
                                    "caption": "A Dow Jones news ticker in Times Square, N.Y., caries headlines.",
                                    "datephototaken": "8-8-2011",
                                    "cutline": "A Dow Jones news ticker in Times Square, N.Y., caries headlines.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AP Investors Mood.jpg",
                                    "imgIndex": "1378818354000",
                                    "imgUniqueName": "1378818354000-AP-Investors-Mood.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/USATODAY/2013/09/10/1378818354000-AP-Investors-Mood.jpg",
                                    "smallbasename": "/-mm-/7fd3dc7c068cbbcc58f86a10a3d60024a10cf4a5/r=500x245/local/-/media/USATODAY/USATODAY/2013/09/10/1378818354000-AP-Investors-Mood.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/USATODAY/2013/09/10/1378818354000-AP-Investors-Mood.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/a82aff275e7044631a060e7624849306ae948ab6/c=1339-116-2262-1038/local/-/media/USATODAY/USATODAY/2013/09/10/1378818354000-AP-Investors-Mood.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/51aedbda03768c5e50dd0d1e84656350287653f4/c=1276-0-2499-922/local/-/media/USATODAY/USATODAY/2013/09/10/1378818354000-AP-Investors-Mood.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/48c1e29eb95c21237a1a9fcf822cce5026879000/c=1345-0-2349-1340/local/-/media/USATODAY/USATODAY/2013/09/10/1378818354000-AP-Investors-Mood.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/b25aee1ed57971e2f779396473c3ef65cb567e82/c=1270-63-2784-922/local/-/media/USATODAY/USATODAY/2013/09/10/1378818354000-AP-Investors-Mood.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/bc98db89787e65837ee3a09fcaf61945742a6647/c=1409-0-2204-1422/local/-/media/USATODAY/USATODAY/2013/09/10/1378818354000-AP-Investors-Mood.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/d651cbac85aa7786146deb53281e9897d7679e3c/c=1305-63-2343-951/local/-/media/USATODAY/USATODAY/2013/09/10/1378818354000-AP-Investors-Mood.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2791251"
                        },
                        {
                            "type": "text",
                            "value": "An opening-week loss can't sink a season, but NFL history suggests it's hard to overcome."
                        },
                        {
                            "type": "text",
                            "value": "Since the 16-game season was implemented in 1978 (and excluding the '82 strike year), 23.7% of teams that started 0-1 made the playoffs."
                        },
                        {
                            "type": "text",
                            "value": "If 2013 follows suit, three or four Week 1 losers are headed for the postseason. Who will it be? Here's a look at the teams starting in a hole:"
                        },
                        {
                            "type": "text",
                            "value": "THEY SHOULD BE OK"
                        },
                        {
                            "type": "text",
                            "value": "Green Bay Packers: Quarterback Aaron Rodgers has plenty of weapons in the passing game, and rookie running back Eddie Lacy is their best ground threat in years. Pass protection will be an ongoing battle with rookie left tackle David Bakhtiari forced into duty because of injuries. And the defense lacks a second pass rusher to take pressure off linebacker Clay Matthews. But the Packers might have survived the San Francisco 49ers if they hadn't been down two key players in the secondary. The Washington Redskins visit in Week 2."
                        },
                        {
                            "type": "text",
                            "value": "Atlanta Falcons: Few buildings are tougher to win in than the Superdome, and New Orleans Saints coach Sean Payton seems to have Falcons coach Mike Smith's number."
                        },
                        {
                            "type": "text",
                            "value": "Atlanta, however, still has one of the NFL's most complete rosters, and veteran running back Steven Jackson's strong showing Sunday in limited use (122 total yards on 16 touches) confirmed he could fill a crucial void. The Falcons get another tough test from the rising St. Louis Rams in Week 2 at the Georgia Dome."
                        },
                        {
                            "type": "text",
                            "value": "Cincinnati Bengals: Turnovers proved costly in Sunday's loss, as they typically do in Chicago against the Bears. The Bengals have one of the NFL's premier perimeter weapons (receiver A.J. Green) and a talented young defense. And they aren't in a hole because the rest of the AFC North lost, too. They host the Pittsburgh Steelers on Monday."
                        },
                        {
                            "type": "text",
                            "value": "THEY HAVE ISSUES"
                        },
                        {
                            "type": "text",
                            "value": "Baltimore Ravens: Countless mistakes in all three phases doomed them against the Denver Broncos, as quarterback Peyton Manning carved up their remodeled defense. But time will help that unit jell. The bigger concern is who will catch the ball from quarterback Joe Flacco, especially with receiver Jacoby Jones lost to a knee injury for four to six weeks. Torrey Smith is a solid No. 2-type receiving threat, but Flacco is leaning heavily on two veterans (Dallas Clark and Brandon Stokley) who don't seem to have much left. They host the Cleveland Browns in Week 2."
                        },
                        {
                            "type": "text",
                            "value": "New York Giants: Coach Tom Coughlin won't stand for the six turnovers that doomed them in Dallas against the Cowboys. So changes figure to come — starting with a backfield that's without Andre Brown for at least seven more games and a starter in David Wilson who can't stop fumbling. The Giants don't have long to figure it out, with the Broncos on their way to MetLife Stadium."
                        },
                        {
                            "type": "text",
                            "value": "Minnesota Vikings: Reigning MVP Adrian Peterson broke a 78-yard touchdown run on his first touch. And Minnesota's defense has a lot of good pieces. But quarterback Christian Ponder looked skittish in the pocket, and two new additions at receiver — veteran Greg Jennings and rookie Cordarrelle Patterson — were practically invisible. Falling to 0-2 on Sunday in Chicago would create a huge hole for team with a backloaded schedule."
                        },
                        {
                            "type": "text",
                            "value": "Browns: They might be closer to contending for their first playoff berth since 2002 than many realize, featuring many intriguing young starters. But they're short on weapons in the passing game while wide receiver Josh Gordon serves his two-game suspension, and quarterback Brandon Weeden — who threw three interceptions in the Week 1 loss to the Miami Dolphins — can't elevate the play of his teammates."
                        },
                        {
                            "type": "text",
                            "value": "Buffalo Bills: Pushing the New England Patriots to the limit in coach Doug Marrone's debut was a good sign, especially with the Bills' best offensive player, C.J. Spiller, averaging 2.5 yards on 22 touches. They also were missing two starters in the secondary, safety Jairus Byrd and cornerback Stephon Gilmore, because of injuries. A solid defensive front and a growing group of perimeter weapons give them a chance to be competitive if rookie quarterback EJ Manuel progresses."
                        },
                        {
                            "type": "text",
                            "value": "Carolina Panthers: The defense did a remarkable job of bending without breaking vs. the high-powered Seattle Seahawks, allowing 370 yards and one touchdown. The end result was what coach Ron Rivera knows the Panthers can't afford: a loss, at home, in a division with a clear top tier. If Cam Newton can't produce more than 163 combined passing and rushing yards, it will be a long season. They go to Buffalo in Week 2."
                        },
                        {
                            "type": "text",
                            "value": "Arizona Cardinals: At least Larry Fitzgerald has someone to throw him the ball now, but new quarterback Carson Palmer had both of the Cardinals' turnovers. And the defense couldn't disrupt Rams quarterback Sam Bradford, who didn't take a sack. No division is more likely to produce three playoff teams than the NFC West, and the Cardinals aren't one of them. They host the Lions next."
                        },
                        {
                            "type": "text",
                            "value": "Washington Redskins: They struggled to combat the unveiling of Philadelphia Eagles coach Chip Kelly's breakneck offense Monday night, though many teams would have with limited film. The greater concern is how disjointed the Redskins' offense looked until they'd fallen into a 26-point hole. Maybe it's just a matter of QB Robert Griffin III blowing off some rust and building trust in his surgically repaired right knee. But Washington can't afford many more performances like that against what could be a brutal schedule."
                        },
                        {
                            "type": "asset",
                            "value": "2791253"
                        },
                        {
                            "type": "text",
                            "value": "THEY CAN'T BE THIS BAD … CAN THEY?  "
                        },
                        {
                            "type": "text",
                            "value": "Steelers: A home loss to the Tennessee Titans. Scoreless on offense for 58 minutes. Zero turnovers forced. Coach Mike Tomlin was right to rip the performance as unacceptable, but where do the Steelers go from here? They put three players on injured reserve Monday — including center Maurkice Pouncey and linebacker Larry Foote — and play their next three games against teams that won at least 10 games last season."
                        },
                        {
                            "type": "text",
                            "value": "Tampa Bay Buccaneers: Could coach Greg Schiano's tough approach be wearing thin? Remember, the Bucs were 6-4 at one point last season before coming unglued down the stretch."
                        },
                        {
                            "type": "text",
                            "value": "Now they've opened Year 2 of the Schiano era with a clunker against the New York Jets. There's a lot of talent in the locker room, but it could sour quickly if the Bucs can't do better in Week 2 against the Saints."
                        },
                        {
                            "type": "text",
                            "value": "THEY'RE IN TROUBLE"
                        },
                        {
                            "type": "text",
                            "value": "    San Diego Chargers: The surprise wasn't that QB Philip Rivers and company blew a 21-point lead Monday night — it's that they were in the game in the first place. Defensive hemorrhaging on third-and-long is always a bad sign. Rivers' play over the last 20 minutes may have been worse. And now the Chargers have a week to figure out how not to get run over by the new-look Eagles. They play at Philadelphia on Sunday."
                        },
                        {
                            "type": "text",
                            "value": "Oakland Raiders: On one hand, coming within 24 yards of a major upset in Indianapolis could be a sign of progress."
                        },
                        {
                            "type": "text",
                            "value": "On the other, the Raiders still have the cheapest roster in the NFL, with a defense filled with retreads and an offense almost entirely reliant on inexperienced starting quarterback Terrelle Pryor to create with his legs and his arm."
                        },
                        {
                            "type": "text",
                            "value": "It's not that the Raiders won't be better than last year. It's that they could be better — and still be bad."
                        },
                        {
                            "type": "text",
                            "value": "Jacksonville Jaguars: The worst team in the NFL, and it might not be close. Quarterback Blaine Gabbert was off from the start in Sunday's loss to the Kansas City Chiefs. They're careless with the ball. They have no pass rush. They're weak against the run. Maybe it will get better when receiver Justin Blackmon returns from his four-game suspension."
                        },
                        {
                            "type": "text",
                            "value": "It probably won't. At least the schedule gives them an opening in Week 2: They'll visit the Raiders, with Chad Henne replacing Gabbert (lacerated hand)."
                        },
                        {
                            "type": "asset",
                            "value": "2773889"
                        }
                    ],
                    "id": 2791259,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Week 1 losers: 0-1 often a sign of what's to come",
                        "shortHeadline": "0-1 often a sign of what's to come",
                        "byline": "Tom Pelissero, USA TODAY Sports",
                        "editedHeadline": null,
                        "storyabstract": "An opening-week loss can't sink a season, but NFL history suggests it's hard to overcome. Since the 16-game season was implemented in 1978 (and excluding the '82 strike year), 23.7% of teams that started 0-1 made the playoffs. If 2013 follows suit, three or four Week 1 losers are headed for the postseason. Who will it be? Here's a look at the teams starting in a hole: THEY SHOULD BE OK Green Bay Packers: Quarterback Aaron Rodgers has plenty of weapons in the passing game, and rookie running back Eddie Lacy is their best ground threat in years. Pass protection will be an ongoing battle with rookie left tackle David Bakhtiari forced into duty because of injuries. And the defense lacks a second pass rusher to take pressure off linebacker Clay Matthews. But the Packers might have survived the San Francisco 49ers if they hadn't been down two key players in the secondary. The Washington Redskins visit in Week 2.",
                        "brief": "Teams that drop opener typically have less than a 25% chance of reaching the postseason.",
                        "storyhighlights": [
                            "Since 1978 %28excluding %2782 strike year%29 only 23.7%25 of teams losing in Week 1 made the postseason",
                            "Packers%2C Falcons and Bengals will likely be in the hunt for a playoff berth",
                            "Raiders%2C Jaguars can start planning for next season"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T10:31:57.496-04:00",
                            "feeddateline": "2013-09-10T10:31:57.496-04:00",
                            "published": "2013-09-10T14:31:57Z",
                            "lastupdated": "2013-09-10T14:31:57Z"
                        },
                        "ssts": {
                            "section": "sports",
                            "subsection": "nfl",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/sports/nfl/2013/09/10/week-1-losers-nfl/2791259/",
                            "shorturl": "http://usat.ly/17MV6KX",
                            "mobileurl": "http://usat.ly/17MV6KX"
                        },
                        "firstAsset": 2791251,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "sports/football/nfl",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2791253,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "2628",
                                    "oImageWidth": "3942",
                                    "sImageHeight": "333",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Kelley L Cox, USA TODAY Sports",
                                    "alternate": null,
                                    "title": "aaron-rodgers",
                                    "caption": "Green Bay Packers quarterback Aaron Rodgers (12) recovers his own fumble against the San Francisco 49ers during the first quarter at Candlestick Park in San Francisco on Sept. 9, 2013.",
                                    "datephototaken": "9-8-2013",
                                    "cutline": "Green Bay Packers quarterback Aaron Rodgers (12) recovers his own fumble against the San Francisco 49ers during the first quarter at Candlestick Park in San Francisco on Sept. 9, 2013.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "aaron-rodgers.jpg",
                                    "imgIndex": "1378789756000",
                                    "imgUniqueName": "1378789756000-aaron-rodgers.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/10/1378789756000-aaron-rodgers.jpg",
                                    "smallbasename": "/-mm-/4044b1e7645488621f157de466cf1a990870caa2/r=500x333/local/-/media/USATODAY/GenericImages/2013/09/10/1378789756000-aaron-rodgers.jpg",
                                    "keywords": "aaron rodgers",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/10/1378789756000-aaron-rodgers.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/f9412e03fdc52e18a5d9d6aadd7dcb171d12f857/c=662-0-3287-2628/local/-/media/USATODAY/GenericImages/2013/09/10/1378789756000-aaron-rodgers.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/f9c868c3816deafb8b7f3e29ea6f2f3f5eb65b79/c=346-157-3634-2628/local/-/media/USATODAY/GenericImages/2013/09/10/1378789756000-aaron-rodgers.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/505d9b0bb15ea6ed7ed825a4b54074929b73d7e0/c=1119-0-3090-2628/local/-/media/USATODAY/GenericImages/2013/09/10/1378789756000-aaron-rodgers.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/53f41dbeeed0e7be2e8b09d5cce936986ba576c8/c=0-260-3942-2485/local/-/media/USATODAY/GenericImages/2013/09/10/1378789756000-aaron-rodgers.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/613a9367edf3c4e9053bccca0f572161883474a3/c=1237-0-2704-2628/local/-/media/USATODAY/GenericImages/2013/09/10/1378789756000-aaron-rodgers.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/ece638f266f1142d5b84f89f41e2c0f1f4f34099/c=607-213-3429-2628/local/-/media/USATODAY/GenericImages/2013/09/10/1378789756000-aaron-rodgers.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2791251,
                            "position": 2,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "4236",
                                    "oImageWidth": "3108",
                                    "sImageHeight": "400",
                                    "sImageWidth": "293",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Tim Heitman, USA TODAY Sports",
                                    "alternate": null,
                                    "title": "09-10-eli-manning",
                                    "caption": "New York Giants quarterback Eli Manning (10) leaves the field after the game against the Dallas Cowboys at AT&T Stadium in Arlington, Texas on Sept. 9, 2013. Manning threw three interceptions in the game.",
                                    "datephototaken": "9-8-2013",
                                    "cutline": "New York Giants quarterback Eli Manning (10) leaves the field after the game against the Dallas Cowboys at AT&T Stadium in Arlington, Texas on Sept. 9, 2013. Manning threw three interceptions in the game.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "eli-manning.jpg",
                                    "imgIndex": "1378789523000",
                                    "imgUniqueName": "1378789523000-eli-manning.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/10/1378789523000-eli-manning.jpg",
                                    "smallbasename": "/-mm-/7f134d1d239959ada60263fdead1c5c5fab33ef2/r=293x400/local/-/media/USATODAY/GenericImages/2013/09/10/1378789523000-eli-manning.jpg",
                                    "keywords": "eli manning",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/10/1378789523000-eli-manning.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/a665505ae5e67af0e325fb41632a260526d6541e/c=0-158-3108-3261/local/-/media/USATODAY/GenericImages/2013/09/10/1378789523000-eli-manning.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/768418001827170c515e6aeb7bf058d71a1be61d/c=0-158-3108-2488/local/-/media/USATODAY/GenericImages/2013/09/10/1378789523000-eli-manning.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/3debd710decc677dbd44233360e7548b84376c70/c=63-158-2832-3844/local/-/media/USATODAY/GenericImages/2013/09/10/1378789523000-eli-manning.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/72a8a9aeff96496e5f8ec3811b00da9248773cd2/c=0-158-3108-1916/local/-/media/USATODAY/GenericImages/2013/09/10/1378789523000-eli-manning.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/415e68b3b5970876f33a8db00a4d2e228040323c/c=265-0-2641-4236/local/-/media/USATODAY/GenericImages/2013/09/10/1378789523000-eli-manning.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/f2a1ff6ace803e0bcef7d0cf670b7ed6df6c24c1/c=318-148-2895-2340/local/-/media/USATODAY/GenericImages/2013/09/10/1378789523000-eli-manning.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2773889,
                            "position": 3,
                            "type": "gallery",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": "sports",
                                "subsection": "nfl",
                                "topic": "",
                                "subtopic": "",
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "name": "Best of NFL Week 1",
                                    "thumbnailPath": "/-mm-/3fee3fe89e3ac48dc022f2983faae1b26822a734/r=500x355/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg",
                                    "thumbnailAssetId": "2791237",
                                    "thumbnailLock": "True",
                                    "gallerySstsPublishLocation": "sports/nfl",
                                    "suppressVideoPreroll": "False",
                                    "galleryType": "Standard",
                                    "seoName": "best-of-nfl-week-1",
                                    "excludemobile": "False",
                                    "noadvertising": "False",
                                    "lastaction": "New",
                                    "content-protection-state": "free",
                                    "editor": "ssamano",
                                    "thumbnailTiny": "/-mm-/6ee3f60712da089a0181d603d9a5f12fc05e52a9/c=216-0-3871-2749&r=115x86/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg",
                                    "slidecount": "48",
                                    "interactive": "false",
                                    "topic": "sports,sports_nfl",
                                    "aws": "sports/football/nfl"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/af1915ea7257d79d2c4a89503f155052fdefd22d/c=588-0-3336-2749/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/7257fce54208e2f953f39f9c315ed35dd53e4119/c=216-0-3871-2749/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/f969a9625a82f94f18716a5c95200db83e8de4ea/c=1099-0-3158-2749/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/05c249869a6d9b87122402900b1972597effaf1a/c=0-30-3871-2214/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/d222c1aa9fdfc30286a9c04ecc5608f85776881f/c=882-0-2423-2749/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/8ca5f3a0074350d7ca39cd33baef707100ab9c1a/c=456-0-3669-2749/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "text",
                            "value": "TWIN FALLS, Idaho (AP) — The Food and Drug Administration reports at least 89 people have reported getting sick after eating Chobani Greek yogurt manufactured in Twin Falls, Idaho."
                        },
                        {
                            "type": "text",
                            "value": "FDA spokeswoman Tamara Ward told The Times-News on Monday that some have described nausea and cramps."
                        },
                        {
                            "type": "text",
                            "value": "No link has been confirmed between the illnesses and the yogurt. However, Ward says the FDA is working with Chobani to hasten its voluntary recall."
                        },
                        {
                            "type": "text",
                            "value": "Chobani last week told grocery stores to destroy 35 varieties of yogurt reported to have been contaminated by a mold associated with dairy products. The affected yogurt cups have the code 16-012 and expiration dates between Sept. 11 and Oct. 7."
                        },
                        {
                            "type": "text",
                            "value": "Health officials have said the yogurt is not a public health threat, but the company said last week the \"mold can act as an opportunistic pathogen for those with compromised immune systems.\""
                        }
                    ],
                    "id": 2792291,
                    "type": "text",
                    "source": "AP",
                    "metaData": {
                        "headline": "FDA receives dozens of reports of illness from yogurt",
                        "shortHeadline": "FDA gets reports of illness from yogurt",
                        "byline": ", AP",
                        "editedHeadline": null,
                        "storyabstract": "TWIN FALLS, Idaho (AP) — The Food and Drug Administration reports at least 89 people have reported getting sick after eating Chobani Greek yogurt manufactured in Twin Falls, Idaho. FDA spokeswoman Tamara Ward told The Times-News on Monday that some have described nausea and cramps. No link has been confirmed between the illnesses and the yogurt. However, Ward says the FDA is working with Chobani to hasten its voluntary recall. Chobani last week told grocery stores to destroy 35 varieties of yogurt reported to have been contaminated by a mold associated with dairy products. The affected yogurt cups have the code 16-012 and expiration dates between Sept. 11 and Oct. 7.",
                        "brief": "The FDA is working with Chobani to hasten its voluntary recall.",
                        "storyhighlights": [
                            "Some people have reported nausea and cramps",
                            "No link has been confirmed between the illnesses and the yogurt",
                            "Health officials have said the yogurt is not a public health threat"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T11:25:38.599-04:00",
                            "feeddateline": "2013-09-10T11:25:38.599-04:00",
                            "published": "2013-09-10T15:25:39Z",
                            "lastupdated": "2013-09-10T15:25:39Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "nation",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/nation/2013/09/10/fda-illness-yogurt/2792291/",
                            "shorturl": "http://usat.ly/1fVh6nU",
                            "mobileurl": "http://usat.ly/1fVh6nU"
                        },
                        "firstAsset": 2776855,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 The Associated Press. All rights reserved. This material may not be published, broadcast, rewritten or redistributed.",
                        "breakingNewsId": 0,
                        "aws": "news/national",
                        "topic": "health-and-wellness"
                    },
                    "assets": [
                        {
                            "id": 2776855,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "3048",
                                    "oImageWidth": "4408",
                                    "sImageHeight": "345",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Mike Groll, AP",
                                    "alternate": null,
                                    "title": "Yogurt recall",
                                    "caption": "Chobani issued a recall of some of its Greek yogurt cups that were affected by mold, the company said.",
                                    "datephototaken": "1-13-2012",
                                    "cutline": "Chobani issued a recall of some of its Greek yogurt cups that were affected by mold, the company said.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "XXX AP Yogurt Recall.jpg",
                                    "imgIndex": "1378490800000",
                                    "imgUniqueName": "1378490800000-XXX-AP-Yogurt-Recall.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/06/1378490800000-XXX-AP-Yogurt-Recall.jpg",
                                    "smallbasename": "/-mm-/9b9d69a17e8cded0df6f0e4067be1a7fab395546/r=500x345/local/-/media/USATODAY/test/2013/09/06/1378490800000-XXX-AP-Yogurt-Recall.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/06/1378490800000-XXX-AP-Yogurt-Recall.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/a0f5c138e026ee47a64fc38f5b3b154c0f74dd87/c=687-0-3729-3048/local/-/media/USATODAY/test/2013/09/06/1378490800000-XXX-AP-Yogurt-Recall.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/60c8e11ee64106ff9572f77c15e699f3237fe075/c=185-0-4231-3048/local/-/media/USATODAY/test/2013/09/06/1378490800000-XXX-AP-Yogurt-Recall.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/2339f2fa722db70e4b495f2f34d77f9c82f307c1/c=1066-0-3350-3048/local/-/media/USATODAY/test/2013/09/06/1378490800000-XXX-AP-Yogurt-Recall.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/b08c446edc579de758a5e8622186f4ffb27c2753/c=0-141-4408-2632/local/-/media/USATODAY/test/2013/09/06/1378490800000-XXX-AP-Yogurt-Recall.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/ed7b05d76994247f1425ac71950a879e5b205f75/c=1357-0-3059-3048/local/-/media/USATODAY/test/2013/09/06/1378490800000-XXX-AP-Yogurt-Recall.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/e9fc428870a86070cadb9135f1a1fd14b224f49e/c=423-0-3984-3048/local/-/media/USATODAY/test/2013/09/06/1378490800000-XXX-AP-Yogurt-Recall.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "id": 2790695,
                    "position": 0,
                    "type": "video",
                    "status": "published",
                    "url": "http://www.usatoday.com/videos/opinion/2013/09/09/2790695/",
                    "mobileUrl": "http://usat.ly/1fSyslo",
                    "ssts": {
                        "section": "opinion",
                        "subsection": "",
                        "topic": "",
                        "subtopic": "",
                        "storysubject": null
                    },
                    "metaData": {
                        "items": {
                            "brightcoveid": "2660573415001",
                            "origin": "1",
                            "viraldistribution": "true",
                            "autoarchive": "true",
                            "adsenabled": "True",
                            "propertyid": "1",
                            "brightcoveaccount": "29906170001",
                            "datecreated": "9/9/2013 8:36:42 PM",
                            "user": "erivers",
                            "status": "complete",
                            "name": "When did Alaskans start carrying guns without a permit?",
                            "shortdescription": "Alaska is one of a handful of states in this country with relatively loose gun restrictions. Editorial Page writer George Hager reveals when restrictions were changed and why. Have a question? Send it using #askusatoday or askusatoday@usatoday.com.",
                            "tags": "gun restrictions,Weapons,guns,concealed carry,open carry,Editorial page,alaska,Ask USA TODAY",
                            "thumbnail": "http://www.gannett-cdn.com/-mm-/18b6850ecd1e7c167848c1a095f3c62acd352cdf/r=500x341/local/-/media/USATODAY/USATODAY/2013/09/09/1378773544000-AP-Shooting-Target-Clinic.jpg",
                            "videostill": "http://www.gannett-cdn.com/media/USATODAY/USATODAY/2013/09/09/1378773544000-AP-Shooting-Target-Clinic.jpg",
                            "startdate": null,
                            "enddate": null,
                            "length": "01:25",
                            "imageid": "2790711",
                            "thumbnailTiny": "http://www.gannett-cdn.com/-mm-/ea421bbd05da066016211ac168864da1ac62dcfe/c=276-0-3000-2049&r=115x86/local/-/media/USATODAY/USATODAY/2013/09/09/1378773544000-AP-Shooting-Target-Clinic.jpg",
                            "bcunfilteredtoken": null,
                            "bcreadtoken": null,
                            "bcwritetoken": null,
                            "credit": null,
                            "excludemobile": "False",
                            "excluderightnow": "False",
                            "majorchange": "False",
                            "content-protection-state": "free",
                            "lastaction": "Published",
                            "interactive": "false",
                            "topic": "opinion",
                            "aws": "news/opinion"
                        },
                        "crops": {
                            "1_1": "http://www.gannett-cdn.com/-mm-/850d4d5a0f88d3d42234f0bbedf33b373afb4167/c=474-0-2520-2049/local/-/media/USATODAY/USATODAY/2013/09/09/1378773544000-AP-Shooting-Target-Clinic.jpg",
                            "4_3": "http://www.gannett-cdn.com/-mm-/015f7f3633068ea4089237a788ede91aa0ec5f5c/c=276-0-3000-2049/local/-/media/USATODAY/USATODAY/2013/09/09/1378773544000-AP-Shooting-Target-Clinic.jpg",
                            "3_4": "http://www.gannett-cdn.com/-mm-/1635a0773f672779a19126453314575f0043abe3/c=654-0-2190-2049/local/-/media/USATODAY/USATODAY/2013/09/09/1378773544000-AP-Shooting-Target-Clinic.jpg",
                            "16_9": "http://www.gannett-cdn.com/-mm-/f5bb578343b77a52d959b31ba31165ee3d054dbf/c=0-180-3000-1874/local/-/media/USATODAY/USATODAY/2013/09/09/1378773544000-AP-Shooting-Target-Clinic.jpg",
                            "9_16": "http://www.gannett-cdn.com/-mm-/53d1f82f9bfd70bf6518b253ab57503822e060ce/c=924-0-2070-2049/local/-/media/USATODAY/USATODAY/2013/09/09/1378773544000-AP-Shooting-Target-Clinic.jpg",
                            "front_thumb": "http://www.gannett-cdn.com/-mm-/0854226ff9858f5b33e3d536d2a0fe1ccbdbd85d/c=300-0-2694-2049/local/-/media/USATODAY/USATODAY/2013/09/09/1378773544000-AP-Shooting-Target-Clinic.jpg"
                        },
                        "document": null
                    }
                },
                {
                    "id": 2788797,
                    "position": 0,
                    "type": "video",
                    "status": "published",
                    "url": "http://www.usatoday.com/videos/news/world/2013/09/09/2788797/",
                    "mobileUrl": "http://usat.ly/1fS2iXd",
                    "ssts": {
                        "section": "news",
                        "subsection": "world",
                        "topic": "",
                        "subtopic": "",
                        "storysubject": null
                    },
                    "metaData": {
                        "items": {
                            "brightcoveid": "2660156554001",
                            "name": "Raw: Man lost in Andes found alive after 4 months",
                            "shortdescription": "Argentine authorities have rescued a 58-year-old Uruguayan man who had been lost in the Andes mountains since May.",
                            "tags": null,
                            "source": "Newslook",
                            "origin": "AFP",
                            "autoarchive": "true",
                            "adsenabled": "True",
                            "startdate": null,
                            "enddate": null,
                            "gannetttracking": "newslook:606661",
                            "longdescription": null,
                            "viraldistribution": "true",
                            "user": "mafowler",
                            "datecreated": "9/9/2013 3:26:29 PM",
                            "credit": "Newslook",
                            "propertyid": "1",
                            "brightcoveaccount": "29906170001",
                            "thumbnail": "http://www.gannett-cdn.com/-mm-/d782962e79a7e54a939e5e2a3e926061d87d6a79/r=500x376/local/-/media/USATODAY/USATODAY/2013/09/09/1378762829000-andes.jpg",
                            "videostill": "http://www.gannett-cdn.com/media/USATODAY/USATODAY/2013/09/09/1378762829000-andes.jpg",
                            "status": "complete",
                            "length": "00:34",
                            "imageid": "2789835",
                            "thumbnailTiny": "http://www.gannett-cdn.com/-mm-/ff76dac34a65da817bb1cb0f0f898da1290a1215/c=0-0-473-356&r=115x86/local/-/media/USATODAY/USATODAY/2013/09/09/1378762829000-andes.jpg",
                            "bcunfilteredtoken": null,
                            "bcreadtoken": null,
                            "bcwritetoken": null,
                            "excludemobile": "False",
                            "excluderightnow": "False",
                            "majorchange": "False",
                            "content-protection-state": "free",
                            "lastaction": "Published",
                            "interactive": "false",
                            "topic": "news_world",
                            "aws": "news/world"
                        },
                        "crops": {
                            "1_1": "http://www.gannett-cdn.com/-mm-/cf6f7e89e89c5b773d978a15f6352c4611d5b917/c=4-0-360-356/local/-/media/USATODAY/USATODAY/2013/09/09/1378762829000-andes.jpg",
                            "4_3": "http://www.gannett-cdn.com/-mm-/e198f3dfd718e45811933057f030fae6ef846eff/c=0-0-473-356/local/-/media/USATODAY/USATODAY/2013/09/09/1378762829000-andes.jpg",
                            "3_4": "http://www.gannett-cdn.com/-mm-/748a574f658bf658b5f1df5ab949fc5ede6131c0/c=52-0-319-356/local/-/media/USATODAY/USATODAY/2013/09/09/1378762829000-andes.jpg",
                            "16_9": "http://www.gannett-cdn.com/-mm-/b47bfc127c22da144d9e8dd86b0e5c11a2cdec17/c=0-17-473-284/local/-/media/USATODAY/USATODAY/2013/09/09/1378762829000-andes.jpg",
                            "9_16": "http://www.gannett-cdn.com/-mm-/cfacf0ee191b2d527c8e05660cc1f8bdeaa7277e/c=88-0-288-356/local/-/media/USATODAY/USATODAY/2013/09/09/1378762829000-andes.jpg",
                            "front_thumb": "http://www.gannett-cdn.com/-mm-/f571587583ca9715bfdff27b85720cd9db618267/c=8-0-424-356/local/-/media/USATODAY/USATODAY/2013/09/09/1378762829000-andes.jpg"
                        },
                        "document": null
                    }
                },
                {
                    "body": [
                        {
                            "type": "text",
                            "value": "WASHINGTON— Diplomatic efforts to dismantle Syria's chemical weapons program have headed off -- for now -- the push for congressional approval of U.S. military airstrikes, sparing President Obama a potentially embarrassing rebuke of his foreign policy agenda."
                        },
                        {
                            "type": "text",
                            "value": "Following a private meeting with the president, Democrats said they would hold off on a vote to see if the diplomatic effort led by Russia could succeed.  \"There is hope, but not yet trust, in what the Russians are doing,\" said Sen. Charles Schumer, D-N.Y., acknowledging that the urgency to act had dissipated. \"There is a large view that we should let that process play out for a little while,\" he said."
                        },
                        {
                            "type": "text",
                            "value": "In a separate meeting with Senate Republicans, Obama asked the GOP to give him time to work the diplomatic process. \"What he wants us to do basically is give him room,\" said Sen. Dean Heller, R-Nev., echoing the skeptic view on Capitol Hill of the Russian governments efforts. \"I think the general response is: 'Can you trust someone who used to be the head of the KGB?'\" Heller said, in reference to Russian President Vladimir Putin."
                        },
                        {
                            "type": "text",
                            "value": "Sen. Ben Cardin, D-Md., said the president encouraged the Senate to keep working on the resolution because he maintained that it forced the international community to increase pressure on the Assad regime. \"He believes that the efforts that are now forming in the international community is a direct result of the credible threat of use of force,\" Cardin said, adding that the debate could likely spill in to next week."
                        },
                        {
                            "type": "text",
                            "value": "The president met with senators ahead of his prime-time address on Syria Tuesday evening. Obama has asked Congress to approve the use of military force in Syria in response to the Syrian government's use of chemical weapons. The Senate was expected to vote on that resolution this week, but votes have been delayed and the White House is now discussing a Russian proposal to have Syrian chemical weapons turned over to international control."
                        },
                        {
                            "type": "text",
                            "value": "\"Well, clearly diplomacy is always a better outcome than military action,\" House Speaker John Boehner, R-Ohio, told reporters Tuesday, \"But I will say that I'm somewhat skeptical of those that are involved in the diplomatic discussion today.\""
                        },
                        {
                            "type": "text",
                            "value": "A bipartisan group of senators including Sens. John McCain, R-Ariz., and Chris Coons, D-Del., were crafting an amendment to the joint resolution that would authorize the use of military force only if the international diplomatic effort fails."
                        },
                        {
                            "type": "text",
                            "value": "The amendment would include specific, tight deadlines for the United Nations Security Council to approve a resolution and for inspectors to verify the Syrians have turned over their chemical weapons. The president would only be granted the use of force if those conditions were not met."
                        },
                        {
                            "type": "text",
                            "value": "The amendment is an effort to build support for a resolution which so far does not appear to have the votes to pass. Sixty votes are necessary to break a filibuster in the Senate, and 50 votes are needed for final passage because Vice President Joe Biden could break the tie in favor."
                        },
                        {
                            "type": "text",
                            "value": "The GOP-led House is not expected to take up a resolution if the Senate can't pass it first, and there continues to be broad opposition to the resolution in the House."
                        },
                        {
                            "type": "text",
                            "value": "While senators across the aisle cheered signs of diplomatic breakthroughs, opposition in the Senate continued to outpace support for the resolution in its current form. Senate Minority Leader Mitch McConnell, R-Ky., announced his opposition on the Senate floor, saying \"a vital national security risk is clearly not at play.\" Sen. Rob Portman, R-Ohio, also said he would vote against it. \"Strike first, strategy later, is a recipe for disaster,\" Portman said."
                        },
                        {
                            "type": "text",
                            "value": "Sen. Ed Markey, D-Mass., who voted 'present' in the Senate Foreign Relations Committee, also announced his opposition on Tuesday. Markey won Secretary of State John Kerry's former Senate seat in a special election earlier this year. On Monday, six senators, five Republicans and one Democrat, announced their opposition."
                        },
                        {
                            "type": "text",
                            "value": "Senate Majority Leader Harry Reid, D-Nev., removed a Wednesday test vote from the Senate schedule following diplomatic developments. He has not yet rescheduled a vote, but he indicated the Senate would continue to debate the resolution to keep pressure on Syria to hand over its chemical weapons. \"We have to make sure the credible threat of military action remains. The only reason Russia is seeking an alternative for military action is that the president of the United States will act if they do not,\" he said."
                        },
                        {
                            "type": "text",
                            "value": "But Sen. Rand Paul, R-Ky., who opposes military strikes, argued that the opposite that was true — that coming to Congress first bought the president time to work out an alternative. \"Some of us working very hard to delay the bombing, have helped us get to the point where a diplomatic solution was possible,\" he said."
                        },
                        {
                            "type": "text",
                            "value": "Paul challenged the president at the lunch meeting on his legal authority to strike Syria without a declaration of war — or specific authorization — from Congress. Paul declined to recount Obama's response, saying it was a private meeting. However, Heller said the president did not directly respond to Paul's questions about whether Obama could strike Syria without congressional authorization. \"He wouldn't give an absolute answer. Obviously, he would consider it,\" Heller said."
                        },
                        {
                            "type": "text",
                            "value": "Obama also acknowledged among Republicans the political perils of seeking force against Syria, noting that polls showed Americans are against the attack and probably weren't going to change with a single televised address, said Sen. Mark Kirk, R-Ill."
                        },
                        {
                            "type": "text",
                            "value": "\"He said, 'I'm good, but I'm not that good,'\" Kirk said. \"I took that as a good dose of political reality. The politics on this is upside-down.\""
                        },
                        {
                            "type": "asset",
                            "value": "2759693"
                        }
                    ],
                    "id": 2792447,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Diplomatic efforts delay Syria vote in Senate",
                        "shortHeadline": "Congress wary of Russian diplomacy",
                        "byline": "Susan Davis and Gregory Korte, USA TODAY",
                        "editedHeadline": null,
                        "storyabstract": "WASHINGTON— Diplomatic efforts to dismantle Syria's chemical weapons program have headed off -- for now -- the push for congressional approval of U.S. military airstrikes, sparing President Obama a potentially embarrassing rebuke of his foreign policy agenda. Following a private meeting with the president, Democrats said they would hold off on a vote to see if the diplomatic effort led by Russia could succeed.  \"There is hope, but not yet trust, in what the Russians are doing,\" said Sen. Charles Schumer, D-N.Y., acknowledging that the urgency to act had dissipated. \"There is a large view that we should let that process play out for a little while,\" he said.",
                        "brief": "Lawmakers are cautious, optimistic diplomacy could forestall military action in Syria.",
                        "storyhighlights": [
                            "Diplomatic deal to isolate Syrian chemical weapons could make Congress vote unnecessary",
                            "Support for the measure has been dwindling in Capitol Hill",
                            "Doubt remains whether Russian diplomacy is a serious effort"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T16:28:12.547981-04:00",
                            "feeddateline": "2013-09-10T16:28:12.547981-04:00",
                            "published": "2013-09-10T15:48:36Z",
                            "lastupdated": "2013-09-10T20:28:12Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "politics",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/politics/2013/09/10/congress-syria-resolution-obama/2792447/",
                            "shorturl": "http://usat.ly/1fVoWOn",
                            "mobileurl": "http://usat.ly/1fVoWOn"
                        },
                        "firstAsset": 2759693,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "news/politics",
                        "topic": "syria-conflict"
                    },
                    "assets": [
                        {
                            "id": 2792777,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "3213",
                                    "oImageWidth": "4251",
                                    "sImageHeight": "377",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "J. Scott Applewhite, AP",
                                    "alternate": null,
                                    "title": "Boehner",
                                    "caption": "Speaker of the House John Boehner, R-Ohio, and GOP leaders talk to reporters following a Republican strategy session at the Capitol in Washington on Sept. 10.",
                                    "datephototaken": "9-10-2013",
                                    "cutline": "Speaker of the House John Boehner, R-Ohio, and GOP leaders talk to reporters following a Republican strategy session at the Capitol in Washington on Sept. 10.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AP US Syria Boehner.jpg",
                                    "imgIndex": "1378828033000",
                                    "imgUniqueName": "1378828033000-AP-US-Syria-Boehner.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378828033000-AP-US-Syria-Boehner.jpg",
                                    "smallbasename": "/-mm-/a8e69869a2dd1fc11546bfb97401f8ca373e4f01/r=500x377/local/-/media/USATODAY/test/2013/09/10/1378828033000-AP-US-Syria-Boehner.jpg",
                                    "keywords": "john boehner",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378828033000-AP-US-Syria-Boehner.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/2952adf374144d20e137df0fd03b2fd4aff0fabc/c=518-0-3715-3204/local/-/media/USATODAY/test/2013/09/10/1378828033000-AP-US-Syria-Boehner.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/5e59b8e37f54186e148d4f14844319010aa093c2/c=0-0-4251-3195/local/-/media/USATODAY/test/2013/09/10/1378828033000-AP-US-Syria-Boehner.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/77c231bf21edac95db9d605d7d2dd2e00516b68a/c=1045-0-3443-3195/local/-/media/USATODAY/test/2013/09/10/1378828033000-AP-US-Syria-Boehner.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/a3613aac6a23fa985d7fb3a02ca67104e5efa5fb/c=0-485-4251-2889/local/-/media/USATODAY/test/2013/09/10/1378828033000-AP-US-Syria-Boehner.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/787ee35a61b2d4c28eedb78fa0e1ea632684acde/c=1292-0-3086-3195/local/-/media/USATODAY/test/2013/09/10/1378828033000-AP-US-Syria-Boehner.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/d59abe0573d51a851be8b19303cfa4958a8247e8/c=246-0-3987-3195/local/-/media/USATODAY/test/2013/09/10/1378828033000-AP-US-Syria-Boehner.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2759693,
                            "position": 2,
                            "type": "Interactive:Sequencer",
                            "status": "Published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": "news",
                                "subsection": "world",
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "interactivename": "usat 2013-08-21 syria primer",
                                    "name": "Understanding Syria: A visual guide to the latest crisis in the middle east ",
                                    "suppressad": "False",
                                    "collapsebuttons": "False",
                                    "longdescription": "Syria, once the center of the Islamic empire, has been the scene of many conquests throughout history before its present incarnation as a dictatorship led by a small Shiite Muslim sect battling a rebellion of Sunni Muslims. As a result, this land of mountains, fertile plains and desert is home to many ethnicities and religious groups.",
                                    "source": "AP, USA TODAY research",
                                    "origin": "usatoday",
                                    "editor": "thargro",
                                    "datecreated": "9/10/2013 2:42:56 PM",
                                    "datepublished": "9/10/2013 2:42:56 PM",
                                    "credit": "Kevin A. Kepple, Anne R. Carey, Emaun Kashfipour, Tory Hargro, Jerry Mosemak and Oren Dorell, USA TODAY",
                                    "permalink": "http://www.usatoday.com/interactive/2759693/understanding-syria-a-visual-guide-to-the-latest-crisis-in-the-middle-east-",
                                    "buttonNumbers": null,
                                    "buttonSize": null,
                                    "imageEffect": "fade-transition",
                                    "globalmage": null,
                                    "interactive": "true",
                                    "aws": "news/world"
                                },
                                "crops": null,
                                "document": "{\"events\":{\"e\":[{\"boxHead\":\"How we got here\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/6f4dc654-3bd0-4465-940e-2eb5f54f1a4a-01c_how.png\",\"boxVideo\":null},{\"boxHead\":\"Defeat government\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/53b27a43-463e-4136-b71b-12cbca6fe8d0-02a_gov_defeat.png\",\"boxVideo\":null},{\"boxHead\":\"Defeat rebels\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/6f4dc654-3bd0-4465-940e-2eb5f54f1a4a-03b_reb_defeat.png\",\"boxVideo\":null},{\"boxHead\":\"Coalition\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/a3b3ac98-bf99-4f8c-84f3-796ee10bffe5-04a_coalition_a.png\",\"boxVideo\":null},{\"boxHead\":\"Opposition\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/a3b3ac98-bf99-4f8c-84f3-796ee10bffe5-05_opposition_a.png\",\"boxVideo\":null},{\"boxHead\":\"Chemical and missile sites\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/2ecea590-31fb-481b-a0a1-b067cf9f397e-06_sites_a.png\",\"boxVideo\":null},{\"boxHead\":\"Military bases\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/873b3e0d-ef98-4b37-bc61-8b917e442c76-07_targets.png\",\"boxVideo\":null},{\"boxHead\":\"Chemical attacks\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/873b3e0d-ef98-4b37-bc61-8b917e442c76-08_chem_attacks.png\",\"boxVideo\":null},{\"boxHead\":\"Refugees\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/873b3e0d-ef98-4b37-bc61-8b917e442c76-09_refugees.png\",\"boxVideo\":null}]}}"
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2794217"
                        },
                        {
                            "type": "text",
                            "value": "BUCHAREST, Romania — Prowling the dark streets of Bucharest, packs of stray dogs have been a major nuisance for years in this formerly communist country."
                        },
                        {
                            "type": "text",
                            "value": "The curs tear through garbage and bite thousands of people a year, even killing two people. The mauling of a small child sparked outrage across the country and spurred the parliament to act over the objections of animal activists."
                        },
                        {
                            "type": "text",
                            "value": "Tuesday, Romania's parliament voted to round up an estimated 64,000 stray dogs and have those that go unclaimed \"euthanized.\""
                        },
                        {
                            "type": "text",
                            "value": "The vote was welcome news to Andreea Felicia Anghel, mother of Ionut Anghel, the 4-year-old boy mauled to death last week while playing in a park."
                        },
                        {
                            "type": "text",
                            "value": "\"The dogs must be sent to shelters, and all possible measures need to be taken, so nothing like that happens ever again,\" she said."
                        },
                        {
                            "type": "text",
                            "value": "The parliament acted after protests Sunday in which several hundred people came out with banners reading, \"My country is not a kennel.\""
                        },
                        {
                            "type": "asset",
                            "value": "2794223"
                        },
                        {
                            "type": "text",
                            "value": "Romania's president has said he will sign the bill into law. A public referendum that had been scheduled to give residents the chance to decide the matter was canceled."
                        },
                        {
                            "type": "text",
                            "value": "Animal activists called the vote barbaric and said they would take their case to the European Commission to get the law thrown out. Romania is part of the European Union."
                        },
                        {
                            "type": "text",
                            "value": "\"We would like to replace the word 'euthanasia' with 'killing,' because euthanasia sounds nice, but it's not being properly used,\" said Gabriel Paun, a spokesman for Four Paws, an animal rights group."
                        },
                        {
                            "type": "text",
                            "value": "Dog attacks scar thousands of Romanians each year here. This year so far, 9,670 people have been treated for bites from stray dogs in the Romanian capital, according to Bucharest's Matei Bals hospital."
                        },
                        {
                            "type": "text",
                            "value": "In recent years, a Bucharest woman was killed by a pack of strays, and a Japanese tourist died after a stray severed an artery in his leg."
                        },
                        {
                            "type": "text",
                            "value": "Attila Biro, a journalist in Bucharest, says he called the city's dog-catchers Tuesday after a woman was bitten near his block."
                        },
                        {
                            "type": "text",
                            "value": "\"The dog was hidden in the block by a couple,\" Biro said. \"Finally the dog catchers came, and they recovered the dog.\""
                        },
                        {
                            "type": "text",
                            "value": "When pro-Soviet dictator Nicolae Ceaucescu was in power in the 1980s, he remade the capital by demolishing older homes and constructing Soviet-style high-rise apartment buildings. Many of Bucharest's 2 million residents were forced into the new apartments from which pets were banned, so they had to abandon their animals to the streets."
                        },
                        {
                            "type": "text",
                            "value": "Ceaucescu  and his wife were executed by firing squad Dec. 25, 1989, after they were caught trying to flee the country amid protests against his rule."
                        },
                        {
                            "type": "text",
                            "value": "McPhedran reported from Berlin"
                        }
                    ],
                    "id": 2793437,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Death sentence issued for strays in Romania",
                        "shortHeadline": "Romania sentences strays to death",
                        "byline": "Vlad Odobescu and Charles McPhedran, Special for USA TODAY",
                        "editedHeadline": null,
                        "storyabstract": "BUCHAREST, Romania — Prowling the dark streets of Bucharest, packs of stray dogs have been a major nuisance for years in this formerly communist country. The curs tear through garbage and bite thousands of people a year, even killing two people. The mauling of a small child sparked outrage across the country and spurred the parliament to act over the objections of animal activists. Tuesday, Romania's parliament voted to round up an estimated 64,000 stray dogs and have those that go unclaimed \"euthanized.\" The vote was welcome news to Andreea Felicia Anghel, mother of Ionut Anghel, the 4-year-old boy mauled to death last week while playing in a park.",
                        "brief": "Parliament acts after a child is mauled to death.",
                        "storyhighlights": [
                            "Many had to abandon pets under Romania%27s pro-Soviet dictator",
                            "Woman killed by pack of strays%2C and a Japanese tourist died after a stray severed an artery in his leg",
                            "The curs  tear through garbage and bite thousands of people a year"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T15:56:42.3651781-04:00",
                            "feeddateline": "2013-09-10T15:56:42.3651781-04:00",
                            "published": "2013-09-10T19:20:03Z",
                            "lastupdated": "2013-09-10T19:56:42Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "world",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/world/2013/09/10/dogs-die-romania/2793437/",
                            "shorturl": "http://usat.ly/1fW0Vqk",
                            "mobileurl": "http://usat.ly/1fW0Vqk"
                        },
                        "firstAsset": 2794217,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "news/world",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2794223,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "2743",
                                    "oImageWidth": "3737",
                                    "sImageHeight": "367",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Daniel Mihailescu, AFP/Getty Images",
                                    "alternate": null,
                                    "title": "Romania dogs",
                                    "caption": "A woman walks her dogs in Bucharest on Sept. 9. Romanian lawmakers voted overwhelmingly for a law allowing stray dogs to be put down after a 4-year-old boy was mauled to death by a pack of strays last week.",
                                    "datephototaken": "9-9-2013",
                                    "cutline": "A woman walks her dogs in Bucharest on Sept. 9. Romanian lawmakers voted overwhelmingly for a law allowing stray dogs to be put down after a 4-year-old boy was mauled to death by a pack of strays last week.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AFP 522748264.jpg",
                                    "imgIndex": "1378838238000",
                                    "imgUniqueName": "1378838238000-AFP-522748264.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/10/1378838238000-AFP-522748264.jpg",
                                    "smallbasename": "/-mm-/ff49be55d79b0ee87b3509c02af043e79f75bd15/r=500x367/local/-/media/USATODAY/GenericImages/2013/09/10/1378838238000-AFP-522748264.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/10/1378838238000-AFP-522748264.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/86bb0bece4b3dc4d761142d8074a1c44669b8c41/c=7-0-2750-2743/local/-/media/USATODAY/GenericImages/2013/09/10/1378838238000-AFP-522748264.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/2f4dc3b936c5b2ccbf4e452e1954c9a4f0d585bb/c=0-0-3639-2743/local/-/media/USATODAY/GenericImages/2013/09/10/1378838238000-AFP-522748264.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/2a9c1de243991b7a70d0c051c6bbf57f3e921b33/c=254-0-2309-2743/local/-/media/USATODAY/GenericImages/2013/09/10/1378838238000-AFP-522748264.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/a077a1aa529299d171bc9dfbe878eaec58a62f27/c=0-627-3737-2743/local/-/media/USATODAY/GenericImages/2013/09/10/1378838238000-AFP-522748264.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/6b58193c48ca6428fed300df297aad8f677c6691/c=896-0-2436-2743/local/-/media/USATODAY/GenericImages/2013/09/10/1378838238000-AFP-522748264.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/e604745f95f7278c08a3ec0b57f8868699d2c1f6/c=0-0-3198-2743/local/-/media/USATODAY/GenericImages/2013/09/10/1378838238000-AFP-522748264.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2794217,
                            "position": 2,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "1952",
                                    "oImageWidth": "3000",
                                    "sImageHeight": "325",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Vadim Ghirda, AP",
                                    "alternate": null,
                                    "title": "Romania Stray Dogs",
                                    "caption": "A stray dog crosses an almost deserted boulevard in Bucharest, Romania, on Dec. 26, 2012.",
                                    "datephototaken": "9-9-2013",
                                    "cutline": "A stray dog crosses an almost deserted boulevard in Bucharest, Romania, on Dec. 26, 2012.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AP Romania Stray Dogs.jpg",
                                    "imgIndex": "1378838238001",
                                    "imgUniqueName": "1378838238001-AP-Romania-Stray-Dogs.jpg",
                                    "isImageVisitedByUser": "False",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/10/1378838238001-AP-Romania-Stray-Dogs.jpg",
                                    "smallbasename": "/-mm-/bbc213789cfb6d3206e96d950d59a353d8035069/r=500x325/local/-/media/USATODAY/GenericImages/2013/09/10/1378838238001-AP-Romania-Stray-Dogs.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/10/1378838238001-AP-Romania-Stray-Dogs.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/6874100bfd514eb24175138df75a76b152541e65/c=540-324-2166-1952/local/-/media/USATODAY/GenericImages/2013/09/10/1378838238001-AP-Romania-Stray-Dogs.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/118aadf9da3ce7a1b8e424e403c1a53c8e035425/c=486-408-2418-1861/local/-/media/USATODAY/GenericImages/2013/09/10/1378838238001-AP-Romania-Stray-Dogs.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/d81f670116fa2b8f6506107e924b5ea7e6f3b1d2/c=702-0-2166-1952/local/-/media/USATODAY/GenericImages/2013/09/10/1378838238001-AP-Romania-Stray-Dogs.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/cda0a05cbab09784f5acb260b0a11e08b4df40ae/c=174-378-2748-1831/local/-/media/USATODAY/GenericImages/2013/09/10/1378838238001-AP-Romania-Stray-Dogs.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/e7028d0fbcc05c2f7da68c7a633a299b56d373f2/c=828-0-1920-1952/local/-/media/USATODAY/GenericImages/2013/09/10/1378838238001-AP-Romania-Stray-Dogs.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/7978bb9b094a2801113aebb6f3ce1b5b5b5855f6/c=294-0-2574-1952/local/-/media/USATODAY/GenericImages/2013/09/10/1378838238001-AP-Romania-Stray-Dogs.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2791673"
                        },
                        {
                            "type": "text",
                            "value": "HELENA, Mont. (AP) — They were newlyweds, but she was having second thoughts about the 8-day-old marriage, court documents say. The couple drove the short distance from their Kalispell home to Glacier National Park, where they got into an argument. He grabbed her by the arm, but she pulled away and shoved him face-first off a cliff to his death."
                        },
                        {
                            "type": "text",
                            "value": "Federal prosecutors have given their version of what happened to Cody Lee Johnson, 25, two months after his body was found in an area of the park so steep and rugged that a helicopter had to be used in the recovery."
                        },
                        {
                            "type": "text",
                            "value": "Jordan Linn Graham, 22, appeared Monday in federal court in Missoula on a second-degree murder charge in Johnson's July 7 death. Her attorney, public defender Andrew Nelson, declined to comment."
                        },
                        {
                            "type": "text",
                            "value": "Johnson's family and friends had called for an investigation since the body was recovered July 12 below the Loop Trail near the sheer cliff drops of the park's popular Going to the Sun Road."
                        },
                        {
                            "type": "text",
                            "value": "Johnson loved her and was excited for their marriage after a two-year courtship, but his relatives suspected that Graham didn't exactly reciprocate, family friend Tracey Maness said. She was aloof, didn't want to spend time with his family, and clammed up when she did, Maness said."
                        },
                        {
                            "type": "text",
                            "value": "He told his mother that Graham would change when they got married, Maness said."
                        },
                        {
                            "type": "text",
                            "value": "\"Nobody ever could have thought something like this could happen,\" she said."
                        },
                        {
                            "type": "text",
                            "value": "On the night Johnson died, Graham told a friend that she meant to talk with Johnson about \"having second thoughts about having been married,\" according to an FBI affidavit filed with the criminal complaint."
                        },
                        {
                            "type": "text",
                            "value": "Just before 9 p.m., she texted the friend that she was about to talk to him."
                        },
                        {
                            "type": "text",
                            "value": "\"But dead serious if u don't hear from me at all again tonight, something happened,\" Graham wrote, according to the affidavit."
                        },
                        {
                            "type": "text",
                            "value": "Johnson was reported missing July 8 when he failed to show up for work, and Graham was questioned the following day."
                        },
                        {
                            "type": "text",
                            "value": "She originally told investigators that Johnson sent her a text message the night of his death, saying he was going for a drive with a friend from out of town."
                        },
                        {
                            "type": "text",
                            "value": "She said she arrived to see a dark-colored car pulling out of their driveway, and that Johnson was in it."
                        },
                        {
                            "type": "text",
                            "value": "On July 11, two days after that interview, Graham told a park ranger in Glacier that she had found the body below the popular Loop area, the affidavit said."
                        },
                        {
                            "type": "text",
                            "value": "The park ranger commented that it was unusual that she found it."
                        },
                        {
                            "type": "text",
                            "value": "\"It was a place he wanted to see before he died,\" she said, according to the affidavit. \"He would come up here with friends to drive fast when his friends were visiting from out of town.\""
                        },
                        {
                            "type": "text",
                            "value": "Five days later, Graham admitted to authorities in a second interview that she had lied, according to the affidavit. She told them she and Johnson had an argument, were upset and decided to go to the Loop Trail."
                        },
                        {
                            "type": "text",
                            "value": "They continued arguing on the trail, and it intensified. At one point, she turned to walk away, but Johnson grabbed her arm, she said."
                        },
                        {
                            "type": "text",
                            "value": "She turned around, removed his hand from her arm and \"due to her anger, she pushed Johnson with both hands in the back, and as a result, he fell face first off the cliff,\" the affidavit said."
                        },
                        {
                            "type": "text",
                            "value": "Maness described Johnson as a \"big goofball\" with a great sense of humor who was into cars, video games, four-wheeling and kayaking. He and Graham during their engagement would go to Glacier for some of the easy day hikes, most recently in May, she said."
                        },
                        {
                            "type": "text",
                            "value": "She said the family is relieved that the investigation is finally complete and charges brought after two months."
                        },
                        {
                            "type": "text",
                            "value": "\"Two months probably isn't very long for an FBI investigation, but when you're waiting for answers, that's a lifetime,\" she said."
                        }
                    ],
                    "id": 2791457,
                    "type": "text",
                    "source": "AP",
                    "metaData": {
                        "headline": "New wife charged with pushing husband off cliff",
                        "shortHeadline": "New wife charged with pushing husband off cliff",
                        "byline": "Matt Volz, Associated Press",
                        "editedHeadline": null,
                        "storyabstract": "HELENA, Mont. (AP) — They were newlyweds, but she was having second thoughts about the 8-day-old marriage, court documents say. The couple drove the short distance from their Kalispell home to Glacier National Park, where they got into an argument. He grabbed her by the arm, but she pulled away and shoved him face-first off a cliff to his death. Federal prosecutors have given their version of what happened to Cody Lee Johnson, 25, two months after his body was found in an area of the park so steep and rugged that a helicopter had to be used in the recovery. Jordan Linn Graham, 22, appeared Monday in federal court in Missoula on a second-degree murder charge in Johnson's July 7 death. Her attorney, public defender Andrew Nelson, declined to comment.",
                        "brief": "Federal prosecutors give their version of what happened to Cody Lee Johnson, 25.",
                        "storyhighlights": [
                            "Couple had been married just 8 days",
                            "Cody Lee Johnson%2C 25%2C was reported missing July 8",
                            "Jordan Linn Graham%2C 22%2C charged with second-degree murder"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T09:01:43.4352019-04:00",
                            "feeddateline": "2013-09-10T09:01:43.4352019-04:00",
                            "published": "2013-09-10T10:56:59Z",
                            "lastupdated": "2013-09-10T13:01:43Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "nation",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/nation/2013/09/10/new-wife-charged-with-pushing-husband-off-cliff/2791457/",
                            "shorturl": "http://usat.ly/17NpGE7",
                            "mobileurl": "http://usat.ly/17NpGE7"
                        },
                        "firstAsset": 2791673,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 The Associated Press. All rights reserved. This material may not be published, broadcast, rewritten or redistributed.",
                        "breakingNewsId": 0,
                        "aws": "news/national",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2791673,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "2023",
                                    "oImageWidth": "3000",
                                    "sImageHeight": "337",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Matt Volz, AP",
                                    "alternate": null,
                                    "title": "\\Glacier National Park",
                                    "caption": "Snow covers the entrance sign to Glacier National Park in West Glacier, Mont., in 2012.",
                                    "datephototaken": "12-11-2012",
                                    "cutline": "Snow covers the entrance sign to Glacier National Park in West Glacier, Mont., in 2012.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AP Glacier Oil Development.jpg",
                                    "imgIndex": "1378816261000",
                                    "imgUniqueName": "1378816261000-AP-Glacier-Oil-Development.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/USATODAY/2013/09/10/1378816261000-AP-Glacier-Oil-Development.jpg",
                                    "smallbasename": "/-mm-/41cf61181267b1562e2dff4e557c9bf5c91d51ac/r=500x337/local/-/media/USATODAY/USATODAY/2013/09/10/1378816261000-AP-Glacier-Oil-Development.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/USATODAY/2013/09/10/1378816261000-AP-Glacier-Oil-Development.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/ce8e200b1fc91f0d1877aee11fb9a5f205b19b55/c=306-0-2328-2023/local/-/media/USATODAY/USATODAY/2013/09/10/1378816261000-AP-Glacier-Oil-Development.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/0804a5689a5ed6020ba1b8f2557f4d07a8459384/c=240-330-2490-2023/local/-/media/USATODAY/USATODAY/2013/09/10/1378816261000-AP-Glacier-Oil-Development.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/d8a2c57208ea881d551a8b80cc3fd54a563a1012/c=342-78-1800-2023/local/-/media/USATODAY/USATODAY/2013/09/10/1378816261000-AP-Glacier-Oil-Development.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/71cf269c0e969119d1621f1fc19c3651a54b6653/c=96-648-2526-2023/local/-/media/USATODAY/USATODAY/2013/09/10/1378816261000-AP-Glacier-Oil-Development.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/91927acd2c7f23111038a3f6cdb2595cd52385c9/c=438-0-1572-2023/local/-/media/USATODAY/USATODAY/2013/09/10/1378816261000-AP-Glacier-Oil-Development.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/40ff7eec0e76cc9f6eac90423d431d45db521c3a/c=348-294-2376-2023/local/-/media/USATODAY/USATODAY/2013/09/10/1378816261000-AP-Glacier-Oil-Development.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2793073"
                        },
                        {
                            "type": "text",
                            "value": "WASHINGTON — If Syria avoids a U.S. strike and agrees to give up its chemical weapons, Libya may serve as a model for how to remove and destroy its deadly stockpiles, analysts say."
                        },
                        {
                            "type": "text",
                            "value": "In 2003, Libya renounced its weapons of mass destruction programs and agreed to abide by the chemical weapons convention and other international treaties."
                        },
                        {
                            "type": "text",
                            "value": "A key difference: Syria is in the middle of a civil war that would make verification difficult, said Tom Collina, research director for the Arms Control Association, an independent group."
                        },
                        {
                            "type": "text",
                            "value": "\"How do we make sure Syria is coming forward with all of its stockpiles?\" Collina said, calling it a \"manageable challenge.\""
                        },
                        {
                            "type": "text",
                            "value": "No agreement has been concluded with Syria and it is not clear whether Syrian leader Bashar Assad and his Russian allies are serious about the offer or whether it is a gambit to delay a U.S. strike."
                        },
                        {
                            "type": "text",
                            "value": "International capabilities to deal with chemical weapons have been improving over the years, analysts say."
                        },
                        {
                            "type": "text",
                            "value": "The United States has continued to develop its abilities to secure and destroy chemical weapons. Much of the expertise resides in the Pentagon's Defense Threat Reduction Agency, which was formed in 1998 to consolidate the military's anti-WMD capabilities."
                        },
                        {
                            "type": "text",
                            "value": "In April, DTRA Director Kenneth Myers told a Senate committee that the United States provided technical assistance to help destroy chemical weapons at two Russian facilities. The agency has worked with Russia's government to destroy its caches of chemical weapons."
                        },
                        {
                            "type": "text",
                            "value": "A spokesman for the agency, Dan Gaffney, said the agency deploys its specialists at the request of U.S. combatant commanders. The agency has in the past sent teams to Iraq and Afghanistan, Gaffney said."
                        },
                        {
                            "type": "text",
                            "value": "The agency is also working in Libya, where in 2003 its then-leader, Moammar Gadhafi, shocked the world when he agreed to relinquish his nuclear and chemical weapons program, though he was under pressure from Western governments and his decision came in the wake of the U.S.-led invasion of Iraq. Gadhafi was increasingly isolated and fearful."
                        },
                        {
                            "type": "text",
                            "value": "\"They joined (the chemical weapons ban treaty) after considerable pressure from Western governments,\" said Michael Luhan, a spokesman for the Organization for the Prohibition of Chemical Weapons, which supervises the chemical ban treaty."
                        },
                        {
                            "type": "text",
                            "value": "Almost immediately after their surprise announcement, Libya destroyed 3,500 bombs designed to carry mustard gas by using bulldozers to bury them. The process was supervised by international inspectors."
                        },
                        {
                            "type": "text",
                            "value": "Libya also destroyed 25 metric tons of sulfur mustard gas, using a mobile facility that was established under contract with an Italian firm. Under the process, the deadly gas is first injected with a chemical that reduces the toxicity of the mustard gas, Luhan said."
                        },
                        {
                            "type": "text",
                            "value": "Libya paid for the destruction of its stockpiles, Luhan said."
                        },
                        {
                            "type": "text",
                            "value": "The destruction of Libya's chemical stpockpiles was finally completed this year by a new government that had replaced Gadhafi after he was killed by a rebellion that overthrew his regime in 2011."
                        },
                        {
                            "type": "text",
                            "value": "The new government subsequently found a previously undeclared cache of shells loaded with mustard gas. The cache has been secured and is awaiting destruction, Luhan said."
                        },
                        {
                            "type": "text",
                            "value": "Neutralizing Syria's stockpiles could be more complex than Libya's. Syria has stockpiles of mustard gas and the nerve agents VX and sarin."
                        },
                        {
                            "type": "text",
                            "value": "Follow @jimmichaels on Twitter."
                        }
                    ],
                    "id": 2792843,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Libya may serve as model for Syria's chemical stockpiles",
                        "shortHeadline": "Libya may show way for Syrian WMDs",
                        "byline": "Jim Michaels, USA TODAY",
                        "editedHeadline": "Libya could be model for Syria's stockpiles",
                        "storyabstract": "WASHINGTON — If Syria avoids a U.S. strike and agrees to give up its chemical weapons, Libya may serve as a model for how to remove and destroy its deadly stockpiles, analysts say. In 2003, Libya renounced its weapons of mass destruction programs and agreed to abide by the chemical weapons convention and other international treaties. A key difference: Syria is in the middle of a civil war that would make verification difficult, said Tom Collina, research director for the Arms Control Association, an independent group. \"How do we make sure Syria is coming forward with all of its stockpiles?\" Collina said, calling it a \"manageable challenge.\"",
                        "brief": "Libya may serve as a model for eliminating Syria's chemical weapons stockpiles.",
                        "storyhighlights": [
                            "Libya renounced its nuclear and chemical weapons in 2003",
                            "The United States and Russia involved in destroying Libya stockpiles",
                            "Destruction of Libyan weapons finished this year"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T13:47:35.494-04:00",
                            "feeddateline": "2013-09-10T13:47:35.494-04:00",
                            "published": "2013-09-10T16:45:22Z",
                            "lastupdated": "2013-09-10T17:47:36Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "politics",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/politics/2013/09/10/syria-chemicals-assad-libya-gadhafi/2792843/",
                            "shorturl": "http://usat.ly/1fVvDQy",
                            "mobileurl": "http://usat.ly/1fVvDQy"
                        },
                        "firstAsset": 2793073,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "news/politics",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2793073,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "1122",
                                    "oImageWidth": "1492",
                                    "sImageHeight": "376",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Russian army archives",
                                    "alternate": null,
                                    "title": "Russian chem weapons site",
                                    "caption": "A Russian soldier examines one of thousands of artillery shells filled with lethal nerve gas at the Russian chemical weapons storage site near Shchuch'ye.",
                                    "datephototaken": "9-26-2002",
                                    "cutline": "A Russian soldier examines one of thousands of artillery shells filled with lethal nerve gas at the Russian chemical weapons storage site near Shchuch'ye.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "A21 CHEMICALWEAPONS 03.jpg",
                                    "imgIndex": "1378830074000",
                                    "imgUniqueName": "1378830074000-A21-CHEMICALWEAPONS-03.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378830074000-A21-CHEMICALWEAPONS-03.jpg",
                                    "smallbasename": "/-mm-/d782962e79a7e54a939e5e2a3e926061d87d6a79/r=500x376/local/-/media/USATODAY/test/2013/09/10/1378830074000-A21-CHEMICALWEAPONS-03.jpg",
                                    "keywords": "syria conflict",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378830074000-A21-CHEMICALWEAPONS-03.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/c7b04d14a695c45dafaa113dad101c5f2d67fd84/c=182-0-1304-1122/local/-/media/USATODAY/test/2013/09/10/1378830074000-A21-CHEMICALWEAPONS-03.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/0829ce0f0a08f6fc55e81da24c7c3103dbb228e2/c=0-0-1492-1122/local/-/media/USATODAY/test/2013/09/10/1378830074000-A21-CHEMICALWEAPONS-03.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/22dbc12af74a550af7beb0c597e2d96d98e3b299/c=322-0-1163-1122/local/-/media/USATODAY/test/2013/09/10/1378830074000-A21-CHEMICALWEAPONS-03.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/cdf6d82dce0fce9b002374abc49cca94dcb7e41b/c=0-137-1492-978/local/-/media/USATODAY/test/2013/09/10/1378830074000-A21-CHEMICALWEAPONS-03.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/4d8c65966d371f21796648f91530782c33ff8b5b/c=429-0-1059-1122/local/-/media/USATODAY/test/2013/09/10/1378830074000-A21-CHEMICALWEAPONS-03.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/23c0a3f6e1bf94c37a5a832d4cfa6531aeea0bef/c=86-0-1399-1122/local/-/media/USATODAY/test/2013/09/10/1378830074000-A21-CHEMICALWEAPONS-03.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "text",
                            "value": "Federal laws pose \"significant obstacles\" to regulation of marijuana in states where it is legal and need to be addressed, Sen. Patrick Leahy, D-Vt.,  said Tuesday in a first-ever hearing aimed at reconciling  rapidly changing state marijuana laws with a federal prohibition on the drug."
                        },
                        {
                            "type": "asset",
                            "value": "2794539"
                        },
                        {
                            "type": "text",
                            "value": "\"We must have a smarter approach to marijuana policy,\" Leahy, chairman of the Senate Judiciary Committee, said. \"Marijuana use in this country is nothing new, but the way that individual states are dealing with marijuana continues to evolve.\""
                        },
                        {
                            "type": "text",
                            "value": "The hearing before the Senate Judiciary Committee follows a Justice Department memo outlining how it will enforce federal marijuana prohibitions in two states, Colorado and Washington, that have legalized its use, and 20 states that allow marijuana for medical use."
                        },
                        {
                            "type": "text",
                            "value": "\"The absolute criminalization of personal marijuana use has contributed to our nation's soaring prison population and has disproportionately affected people of color,\" Leahy said."
                        },
                        {
                            "type": "text",
                            "value": "Sen. Charles Grassley, R-Iowa, said Colorado has done a poor job so far of preventing marijuana exports to other states where marijuana remains illegal."
                        },
                        {
                            "type": "text",
                            "value": "\"Why has the Justice Department decided to trust Colorado?\" Grassley said. \"Colorado has become a significant exporter of marijuana.\""
                        },
                        {
                            "type": "text",
                            "value": "The Justice Department reserved its right to challenge state laws if public health or safety problems emerge or if the states fail to enact strict regulations to control marijuana use and sale, Deputy Attorney General James Cole, author of the memo, told the Senate panel."
                        },
                        {
                            "type": "text",
                            "value": "The states' regulations must be \"tough in practice, not just on paper,\" Cole said. \"It must include strong enforcement efforts, backed by adequate funding.\""
                        },
                        {
                            "type": "text",
                            "value": "The Justice Department said in its Aug. 29 memo to U.S. attorneys nationwide that it would seek only to prosecute people who sell marijuana to minors, use state laws as a cover for drug trafficking or who attempt to distribute marijuana in states where it is not legal."
                        },
                        {
                            "type": "text",
                            "value": "King County, Wash., Sheriff John Urquhart said he sees little conflict between his state's marijuana laws and federal law enforcement."
                        },
                        {
                            "type": "text",
                            "value": "\"The reality is we do have complimentary goals and values,\" Urquhart said. \"We all agree we don't want our children using marijuana. We all agree we don't want impaired drivers. We all agree we don't want to continue enriching criminals.\""
                        },
                        {
                            "type": "text",
                            "value": "The federal government needs to take some steps to help the state meet those goals, particularly easing banking laws to allow them to do business with licensed marijuana business, Urquhart said."
                        },
                        {
                            "type": "text",
                            "value": "Since it's illegal under federal law for banks to open checking, savings or credit card accounts for marijuana businesses, marijuana stores are cash-only, he said. That makes them prime targets for armed robberies and makes them difficult to audit for tax evasion and wage theft, he said."
                        },
                        {
                            "type": "text",
                            "value": "\"I am simply asking that the federal government allow banks to work with legitimate marijuana businesses who are licensed under this new state law,\" Urquhart said."
                        },
                        {
                            "type": "text",
                            "value": "\"What we have in Washington is not the wild, wild West,\" he said. \"The message to my deputies has been very clear: You will enforce our new marijuana laws. You will write someone a ticket for smoking in public. You will enforce age limits. You will put unlicensed stores out of business.\""
                        },
                        {
                            "type": "text",
                            "value": "Legalizing marijuana without strict controls will create an enormous public health problem similar to what the United States faced with tobacco use, Kevin Sabet, founder of Project SAM, which advocates for a marijuana policy that focuses on public health, prevention and treatment."
                        },
                        {
                            "type": "text",
                            "value": "After years of fighting \"Big Tobacco,\" Sabet said, \"we are now on the brink of creating 'Big Marijuana'.\""
                        },
                        {
                            "type": "text",
                            "value": "\"Authorizing the large scale, commercial production of marijuana will undoubtedly expand its access and availability,\" Sabet said. \"When we can prevent negative consequences of the commercial sale and production of marijuana now, why would be open the floodgates, hope for the best, and try with limited resources to patch everything up when things go wrong?\""
                        },
                        {
                            "type": "text",
                            "value": "The hearing suggests that \"the Senate at last is acknowledging the remarkable shift in public opinion and state laws involving marijuana,\" Drug Police Alliance Executive Director Ethan Nadelmann said."
                        },
                        {
                            "type": "text",
                            "value": "Follow Donna Leinwand Leger on Twitter: @donnaleinwand"
                        }
                    ],
                    "id": 2793487,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Senate panel clears the air on marijuana laws",
                        "shortHeadline": "Senate panel tackles marijuana laws",
                        "byline": "Donna Leinwand Leger, USA TODAY",
                        "editedHeadline": "Senate panel clears the air on marijuana laws",
                        "storyabstract": "Federal laws pose \"significant obstacles\" to regulation of marijuana in states where it is legal and need to be addressed, Sen. Patrick Leahy, D-Vt.,  said Tuesday in a first-ever hearing aimed at reconciling  rapidly changing state marijuana laws with a federal prohibition on the drug. \"We must have a smarter approach to marijuana policy,\" Leahy, chairman of the Senate Judiciary Committee, said. \"Marijuana use in this country is nothing new, but the way that individual states are dealing with marijuana continues to evolve.\" The hearing before the Senate Judiciary Committee follows a Justice Department memo outlining how it will enforce federal marijuana prohibitions in two states, Colorado and Washington, that have legalized its use, and 20 states that allow marijuana for medical use.",
                        "brief": "Hearing examines conflict between state and federal laws.",
                        "storyhighlights": null,
                        "dates": {
                            "embargodate": "2013-09-10T16:17:58.939-04:00",
                            "feeddateline": "2013-09-10T16:17:58.939-04:00",
                            "published": "2013-09-10T19:11:03Z",
                            "lastupdated": "2013-09-10T20:17:59Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "nation",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/nation/2013/09/10/senate-explores-marijuana-laws/2793487/",
                            "shorturl": "http://usat.ly/17Oi7go",
                            "mobileurl": "http://usat.ly/17Oi7go"
                        },
                        "firstAsset": 2794539,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "news/national",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2794539,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "1481",
                                    "oImageWidth": "2000",
                                    "sImageHeight": "370",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Brennan Linsley, AP",
                                    "alternate": null,
                                    "title": "A05_MARIJUANA_03",
                                    "caption": "Rachel Schaefer of Denver smokes marijuana on the official opening night of Club 64, a marijuana-specific social club, where a New Year's Eve party was held in Denver on Dec. 31, 2012.",
                                    "datephototaken": "12-31-2012",
                                    "cutline": "Rachel Schaefer of Denver smokes marijuana on the official opening night of Club 64, a marijuana-specific social club, where a New Year's Eve party was held in Denver on Dec. 31, 2012.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "A05_MARIJUANA_03.jpg",
                                    "imgIndex": "1378840736000",
                                    "imgUniqueName": "1378840736000-A05-MARIJUANA-03.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/10/1378840736000-A05-MARIJUANA-03.jpg",
                                    "smallbasename": "/-mm-/f633a7a17cf3f0efd70f982ae2fb3681331f79e4/r=500x370/local/-/media/USATODAY/GenericImages/2013/09/10/1378840736000-A05-MARIJUANA-03.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/10/1378840736000-A05-MARIJUANA-03.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/e1ae4050f09de7b9a599c8fda484cc934ba89810/c=724-200-2000-1476/local/-/media/USATODAY/GenericImages/2013/09/10/1378840736000-A05-MARIJUANA-03.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/8acdc9e028dbc885db348ae08b2e07f3547d932c/c=32-0-2000-1481/local/-/media/USATODAY/GenericImages/2013/09/10/1378840736000-A05-MARIJUANA-03.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/bde9ab9b51af3b142b240c0be5009c33ef6e5180/c=892-0-2000-1481/local/-/media/USATODAY/GenericImages/2013/09/10/1378840736000-A05-MARIJUANA-03.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/5c37c6fe66256b2d7bb519899a2377e41aacad60/c=0-256-2000-1384/local/-/media/USATODAY/GenericImages/2013/09/10/1378840736000-A05-MARIJUANA-03.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/2c97628798cc3f2cdac02650b596448bd9b94176/c=952-0-1780-1481/local/-/media/USATODAY/GenericImages/2013/09/10/1378840736000-A05-MARIJUANA-03.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/2e7968cb136a5c40e478c4ee8779065dc76ec3de/c=268-0-2000-1481/local/-/media/USATODAY/GenericImages/2013/09/10/1378840736000-A05-MARIJUANA-03.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2794455"
                        },
                        {
                            "type": "text",
                            "value": "DETROIT — Ndamukong Suh was fined $100,000 for his low block on Minnesota Vikings center John Sullivan today, but the Detroit Lions all-pro defensive tackle avoided the second suspension of his career."
                        },
                        {
                            "type": "text",
                            "value": "The fine, the sixth of Suh's career, is one of the largest in league history."
                        },
                        {
                            "type": "text",
                            "value": "Suh was not available for comment in the locker room today, but teammates said he apologized for the play, which negated DeAndre Levy's interception return for a touchdown, in a team meeting this morning."
                        },
                        {
                            "type": "text",
                            "value": "\"He just basically said that he can't make those type of mistakes and he can't put us in the position where we've got to battle back from mistakes like that,\" receiver Nate Burleson said. \"And he also said with him having a target and people looking for him, they're looking at us in the same light. So as a team we've got to understand that the microscope is on us.\""
                        },
                        {
                            "type": "text",
                            "value": "After Suh finished talking, Burleson said a few players screamed out, \"We love you Suh.\""
                        },
                        {
                            "type": "text",
                            "value": "\"We're a family,\" Burleson said. \"I think we hugged and kissed after that, sang kumbaya. It's all good, baby.\""
                        },
                        {
                            "type": "text",
                            "value": "But for all their support, teammates won't be chipping in to pay off a fine that sent shock waves through the locker room for its largesse."
                        },
                        {
                            "type": "text",
                            "value": "When told how much Suh was fined, Burleson leaned back in shock."
                        },
                        {
                            "type": "text",
                            "value": "\"Oh, baby,\" he said. \"For real? Are you serious? A hundred stacks? No, there's not much love in the world, man. I'll send him a card on Valentine's Day, but I don't love him that much (to chip in).\""
                        },
                        {
                            "type": "text",
                            "value": "An NFL official said Monday the league was considering suspending Suh for the block because he's considered a repeat violator of player-safety rules."
                        },
                        {
                            "type": "text",
                            "value": "Suh was suspended two games for stomping on the arm of Green Bay Packers offensive lineman Evan Dietrich-Smith on Thanksgiving of 2011, and he was fined five times in his first three NFL seasons."
                        },
                        {
                            "type": "text",
                            "value": "As a rookie, Suh was fined twice for hits on quarterbacks Jake Delhomme ($7,500) and Jay Cutler ($15,000) and once for using an opponent for leverage on a field goal ($5,000). In 2011, he was docked $20,000 for a preseason hit on Andy Dalton. And last year, Suh was fined $30,000 for kicking Houston Texans quarterback Matt Schaub in the groin on Thanksgiving."
                        },
                        {
                            "type": "text",
                            "value": "By levying a six-figure punishment today, the league sent a clear message that further violations likely will lead to a suspension."
                        },
                        {
                            "type": "text",
                            "value": "\"He's a teammate of ours and he's a great player, a guy that besides that play wrecked the game for the Vikings,\" Lions quarterback Matthew Stafford said. \"He was in the backfield the whole game, caused a pick when (Stephen Tulloch) got his pick. He did a great job, played a great game. It's unfortunate that that had to happen and it kind of overshadowed his performance, but we stick with him. He's a guy that's an integral part of our team and a great player on defense and hopefully we can put this behind us and just move on.\""
                        },
                        {
                            "type": "text",
                            "value": "Including today's fine, Suh has lost more than $342,000 in fines and missed game checks due to player-safety violations. He's made more than $51.7 million in his career from the Lions so far."
                        },
                        {
                            "type": "text",
                            "value": "The NFL fined James Harrison $75,000 for a hit on a defenseless receiver last fall and several other players, including Dunta Robinson and Brandon Meriweather, were fined $50,000 last year."
                        },
                        {
                            "type": "text",
                            "value": "New England Patriots coach Bill Belichick was fined $500,000 for his role in the 2007 spygate scandal, and Ray Lewis was fined $250,000 for lying to police after a 2000 double murder."
                        },
                        {
                            "type": "text",
                            "value": "Birkett writes for the Detroit Free Press, a Gannett property."
                        },
                        {
                            "type": "text",
                            "value": "***"
                        },
                        {
                            "type": "text",
                            "value": "PHOTOS: The best of Week 1"
                        },
                        {
                            "type": "asset",
                            "value": "2773889"
                        }
                    ],
                    "id": 2794433,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Ndamukong Suh fined $100,000 for illegal block",
                        "shortHeadline": "Suh fined $100,000 for illegal block",
                        "byline": "Dave Birkett, USA TODAY Sports",
                        "editedHeadline": null,
                        "storyabstract": "DETROIT — Ndamukong Suh was fined $100,000 for his low block on Minnesota Vikings center John Sullivan today, but the Detroit Lions all-pro defensive tackle avoided the second suspension of his career. The fine, the sixth of Suh's career, is one of the largest in league history. Suh was not available for comment in the locker room today, but teammates said he apologized for the play, which negated DeAndre Levy's interception return for a touchdown, in a team meeting this morning. \"He just basically said that he can't make those type of mistakes and he can't put us in the position where we've got to battle back from mistakes like that,\" receiver Nate Burleson said. \"And he also said with him having a target and people looking for him, they're looking at us in the same light. So as a team we've got to understand that the microscope is on us.\"",
                        "brief": "League opts for huge penalty over suspension",
                        "storyhighlights": [
                            "Lions DT Ndamukong Suh has made more than %2451.7 million in his career",
                            "With this penalty%2C he has been fined a total of %24177%2C500",
                            "A suspension would have cost Suh %2437%2C058 for every game he missed"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T16:22:33.5112004-04:00",
                            "feeddateline": "2013-09-10T16:22:33.5112004-04:00",
                            "published": "2013-09-10T19:02:27Z",
                            "lastupdated": "2013-09-10T20:22:33Z"
                        },
                        "ssts": {
                            "section": "sports",
                            "subsection": "nfl",
                            "topic": "lions",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/sports/nfl/lions/2013/09/10/ndamukong-suh-fined-100000-for-illegal-block-minnesota-vikings-center-john-sullivan/2794433/",
                            "shorturl": "http://usat.ly/1fW8Dkl",
                            "mobileurl": "http://usat.ly/1fW8Dkl"
                        },
                        "firstAsset": 2794455,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "sports/football/nfl",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2794455,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "1865",
                                    "oImageWidth": "2803",
                                    "sImageHeight": "332",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Tim Fuller, USA TODAY Sports",
                                    "alternate": null,
                                    "title": "suh fine",
                                    "caption": "Dec 30, 2012; Detroit, MI, USA; Detroit Lions defensive tackle Ndamukong Suh (90) during the first quarter against the Chicago Bears at Ford Field. Mandatory Credit: Tim Fuller-USA TODAY Sports ORG XMIT: USATSI-82232 ORIG FILE ID:  20121230_jrc_af2_076.JPG",
                                    "datephototaken": "12-30-2012",
                                    "cutline": "Dec 30, 2012; Detroit, MI, USA; Detroit Lions defensive tackle Ndamukong Suh (90) during the first quarter against the Chicago Bears at Ford Field. Mandatory Credit: Tim Fuller-USA TODAY Sports ORG XMIT: USATSI-82232 ORIG FILE ID:  20121230_jrc_af2_076.JPG",
                                    "orientation": "horizontal",
                                    "OrigImageName": "USP NFL_ Chicago Bears at Detroit Lions_001.jpg",
                                    "imgIndex": "1378839691000",
                                    "imgUniqueName": "1378839691000-USP-NFL-Chicago-Bears-at-Detroit-Lions-001.jpg",
                                    "isImageVisitedByUser": "False",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378839691000-USP-NFL-Chicago-Bears-at-Detroit-Lions-001.jpg",
                                    "smallbasename": "/-mm-/521cd80a4fb9f1f1edf37d025629b379daee5bba/r=500x332/local/-/media/USATODAY/test/2013/09/10/1378839691000-USP-NFL-Chicago-Bears-at-Detroit-Lions-001.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378839691000-USP-NFL-Chicago-Bears-at-Detroit-Lions-001.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/33b85181bde88fc6ce0c59dea738ca7b78f38970/c=470-0-2332-1865/local/-/media/USATODAY/test/2013/09/10/1378839691000-USP-NFL-Chicago-Bears-at-Detroit-Lions-001.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/21ca40ca2d6a3bd5bd9370305f09ceb194e375e4/c=409-78-2197-1421/local/-/media/USATODAY/test/2013/09/10/1378839691000-USP-NFL-Chicago-Bears-at-Detroit-Lions-001.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/bad1d6ffbffa0bdf369c91fda234db4563315b82/c=683-61-1900-1685/local/-/media/USATODAY/test/2013/09/10/1378839691000-USP-NFL-Chicago-Bears-at-Detroit-Lions-001.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/642d843f705405b386c74c697b112914ced093c9/c=241-61-2393-1280/local/-/media/USATODAY/test/2013/09/10/1378839691000-USP-NFL-Chicago-Bears-at-Detroit-Lions-001.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/ffaa64eca8ed27e8a660ec5c8e6eee398bcfcf9b/c=885-73-1715-1550/local/-/media/USATODAY/test/2013/09/10/1378839691000-USP-NFL-Chicago-Bears-at-Detroit-Lions-001.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/1908bf5d7485cec58e5157a37e74fcce17fb1b97/c=554-84-1995-1320/local/-/media/USATODAY/test/2013/09/10/1378839691000-USP-NFL-Chicago-Bears-at-Detroit-Lions-001.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2773889,
                            "position": 2,
                            "type": "gallery",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": "sports",
                                "subsection": "nfl",
                                "topic": "",
                                "subtopic": "",
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "name": "Best of NFL Week 1",
                                    "thumbnailPath": "/-mm-/3fee3fe89e3ac48dc022f2983faae1b26822a734/r=500x355/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg",
                                    "thumbnailAssetId": "2791237",
                                    "thumbnailLock": "True",
                                    "gallerySstsPublishLocation": "sports/nfl",
                                    "suppressVideoPreroll": "False",
                                    "galleryType": "Standard",
                                    "seoName": "best-of-nfl-week-1",
                                    "excludemobile": "False",
                                    "noadvertising": "False",
                                    "lastaction": "New",
                                    "content-protection-state": "free",
                                    "editor": "ssamano",
                                    "thumbnailTiny": "/-mm-/6ee3f60712da089a0181d603d9a5f12fc05e52a9/c=216-0-3871-2749&r=115x86/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg",
                                    "slidecount": "48",
                                    "interactive": "false",
                                    "topic": "sports,sports_nfl",
                                    "aws": "sports/football/nfl"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/af1915ea7257d79d2c4a89503f155052fdefd22d/c=588-0-3336-2749/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/7257fce54208e2f953f39f9c315ed35dd53e4119/c=216-0-3871-2749/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/f969a9625a82f94f18716a5c95200db83e8de4ea/c=1099-0-3158-2749/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/05c249869a6d9b87122402900b1972597effaf1a/c=0-30-3871-2214/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/d222c1aa9fdfc30286a9c04ecc5608f85776881f/c=882-0-2423-2749/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/8ca5f3a0074350d7ca39cd33baef707100ab9c1a/c=456-0-3669-2749/local/-/media/USATODAY/USATODAY/2013/09/10/1378788604000-USATSI-7426405.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "text",
                            "value": "WASHINGTON — It looks, at least for the moment, like Russian President Vladimir Putin had something useful to contribute to dealing with the Syrian crisis after all."
                        },
                        {
                            "type": "asset",
                            "value": "2794619"
                        },
                        {
                            "type": "text",
                            "value": "Weeks after President Obama canceled bilateral meetings in Moscow with Putin because of doubts that anything constructive could come of such a visit, it's the Russians who have offered a potential opening for Obama, who has failed to win support from Americans or Congress to carry out a punitive military strike against the Bashar Assad regime."
                        },
                        {
                            "type": "text",
                            "value": "Obama told lawmakers Tuesday he has decided to put off a potential strike as he pursues a Russian-backed plan at the United Nations that would place Syria's chemical stockpile under international monitoring."
                        },
                        {
                            "type": "text",
                            "value": "There is healthy skepticism at the White House about the plan, and administration officials have made clear to the Russians that this can't become a process of delay and avoidance."
                        },
                        {
                            "type": "text",
                            "value": "But the proposal offers Obama a potential path away from a military confrontation that would allow him to claim Syria paid a price for a chemical attack that killed more than 1,400 people Aug. 21."
                        },
                        {
                            "type": "text",
                            "value": "The turn in events raises questions about whether the Obama administration properly gauged Putin's motivations and what this could mean for the tense U.S.-Russia relationship."
                        },
                        {
                            "type": "text",
                            "value": "\"It shows that there are still some bargains to be struck with the Russians that the president maybe hadn't taken very seriously,\" says Stephen Long, a political scientist at the University of Richmond."
                        },
                        {
                            "type": "text",
                            "value": "In a series of television interviews  Monday shortly after the Russians publicly floated their proposal, Obama tried to squash the notion that it came out of thin air."
                        },
                        {
                            "type": "text",
                            "value": "The president said talk between the United States and Russia about securing the Syrian chemical stockpile dates back to a conversation he had with Putin at a G-20 summit in Los Cabos, Mexico, last year. Obama said he and Putin again discussed the issue on the margins of this year's G-20, which was held last week in St. Petersburg, Russia."
                        },
                        {
                            "type": "text",
                            "value": "Earlier on Monday, Secretary of State John Kerry had said at a London news conference that a military confrontation could be avoided if Syria gave up its chemical weapons. Later, he spoke by telephone with Russian Foreign Minister Sergey Lavrov and told him  the United States was not ready to embrace such a proposal but was willing to take a hard look if it was credible, according to a senior administration official, who spoke on the condition of anonymity to discuss the internal deliberations."
                        },
                        {
                            "type": "text",
                            "value": "Soon after the Kerry-Lavrov phone call, Lavrov  announced that Russia was willing to play a role in securing the Syrian chemical weapons. The proposal was quickly embraced by Syrian government officials and U.N. Secretary-General Ban Ki Moon."
                        },
                        {
                            "type": "text",
                            "value": "For Putin, the opportunity to reinsert himself into the debate on Syria was ideal."
                        },
                        {
                            "type": "text",
                            "value": "While Obama has staked his credibility on doing something in Syria, Putin has staked his credibility on not letting Syria become another Libya — a NATO-led and U.N.-sanctioned operation that Putin fiercely opposed and said was tantamount to the Christian Crusades."
                        },
                        {
                            "type": "text",
                            "value": "\"This may be a way for him to look less weak, while also potentially boxing the United States in a corner, if we nonetheless go to war\" in Syria, said Matthew Rojansky, a Russian expert at the Wilson Center in Washington."
                        },
                        {
                            "type": "text",
                            "value": "For the past decade, Russia strove to play a bigger role in global politics, and it's long seen itself as having a rightful place in shaping the Middle East, even though its sphere of influence is largely limited to Syria and Iran."
                        },
                        {
                            "type": "text",
                            "value": "If Putin is able to help shepherd a deal that averts U.S. military action, it would be a masterstroke. Even if it doesn't head off a strike, he may still end up looking good."
                        },
                        {
                            "type": "text",
                            "value": "\"If it comes to pass, he then becomes a necessary player in Middle East politics – which is something he wants, to enhance Russia's place in determining world affairs,\"  said Michael Corgan, a professor of international relations at Boston University. \"If it doesn't happen, then Putin looks like the one who tried to do things peacefully.  This is a win-win for him.\""
                        }
                    ],
                    "id": 2794529,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "For Putin,  Syria weapons deal would be  masterstroke",
                        "shortHeadline": "For Putin, Syria proposal is win-win",
                        "byline": "Aamer Madhani, USA TODAY",
                        "editedHeadline": null,
                        "storyabstract": "WASHINGTON — It looks, at least for the moment, like Russian President Vladimir Putin had something useful to contribute to dealing with the Syrian crisis after all. Weeks after President Obama canceled bilateral meetings in Moscow with Putin because of doubts that anything constructive could come of such a visit, it's the Russians who have offered a potential opening for Obama, who has failed to win support from Americans or Congress to carry out a punitive military strike against the Bashar Assad regime. Obama told lawmakers Tuesday he has decided to put off a potential strike as he pursues a Russian-backed plan at the United Nations that would place Syria's chemical stockpile under international monitoring.",
                        "brief": "Putin offers an opening for Obama, who has failed to gain support for a military strike.",
                        "storyhighlights": [
                            "Russia backs plan to place Syria%27s chemical stockpile under international control",
                            "White House  skeptical%2C but plan offers Obama possible path away from confrontation",
                            "For Putin%2C it%27s an opportunity to play  bigger role in global politics"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T16:40:49.504-04:00",
                            "feeddateline": "2013-09-10T16:40:49.504-04:00",
                            "published": "2013-09-10T20:17:46Z",
                            "lastupdated": "2013-09-10T20:40:50Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "politics",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/politics/2013/09/10/putin-chemical-weapons-united-nations-obama/2794529/",
                            "shorturl": "http://usat.ly/17OrnBi",
                            "mobileurl": "http://usat.ly/17OrnBi"
                        },
                        "firstAsset": 2794619,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "news/politics",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2794619,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "3543",
                                    "oImageWidth": "2362",
                                    "sImageHeight": "400",
                                    "sImageWidth": "266",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "KIRILL KUDRYAVTSEV, AFP/Getty Images",
                                    "alternate": null,
                                    "title": "AFP 522596356",
                                    "caption": "Russias President Vladimir Putin walks past President Obama during the G-20 summit  Sept. 6 in St. Petersburg, Russia.",
                                    "datephototaken": "9-6-2013",
                                    "cutline": "Russias President Vladimir Putin walks past President Obama during the G-20 summit  Sept. 6 in St. Petersburg, Russia.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AFP 522596356.jpg",
                                    "imgIndex": "1378841598000",
                                    "imgUniqueName": "1378841598000-AFP-522596356.jpg",
                                    "isImageVisitedByUser": "False",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378841598000-AFP-522596356.jpg",
                                    "smallbasename": "/-mm-/b2e9b23cd767d8a10443c055f0220c24d0200e88/r=266x400/local/-/media/USATODAY/test/2013/09/10/1378841598000-AFP-522596356.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378841598000-AFP-522596356.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/f23008c3ce6758b99e4b7e8cfc85ecd8d6f9bb8b/c=0-124-2362-2480/local/-/media/USATODAY/test/2013/09/10/1378841598000-AFP-522596356.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/18954c9a62e5704399635907b4b078db85ae5904/c=0-0-2362-1762/local/-/media/USATODAY/test/2013/09/10/1378841598000-AFP-522596356.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/c524a4020456263fe72b43fcb6c0be05edee158b/c=0-0-2362-3135/local/-/media/USATODAY/test/2013/09/10/1378841598000-AFP-522596356.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/8e441b298c195c15a777cfdde363f319303c35c2/c=0-194-2362-1523/local/-/media/USATODAY/test/2013/09/10/1378841598000-AFP-522596356.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/e509df68ce721c386e02c34a51ac927cdf9c86eb/c=195-0-2184-3543/local/-/media/USATODAY/test/2013/09/10/1378841598000-AFP-522596356.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/f2dc078fc922acbf217c020b61b03f296c071389/c=0-62-2362-2072/local/-/media/USATODAY/test/2013/09/10/1378841598000-AFP-522596356.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "id": 2786957,
                    "position": 0,
                    "type": "gallery",
                    "status": "published",
                    "url": null,
                    "mobileUrl": "",
                    "ssts": {
                        "section": "travel",
                        "subsection": "destinations",
                        "topic": "",
                        "subtopic": "",
                        "storysubject": null
                    },
                    "metaData": {
                        "items": {
                            "name": "It's that time of year! Incredible fall foliage hikes",
                            "thumbnailPath": "/-mm-/30d078477e2619bda9371aa3fe6088d8945c3335/r=500x339/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg",
                            "thumbnailAssetId": "2787241",
                            "thumbnailLock": "True",
                            "gallerySstsPublishLocation": "travel/destinations",
                            "suppressVideoPreroll": "False",
                            "galleryType": "Standard",
                            "seoName": "incredible-fall-foliage-hikes",
                            "excludemobile": "False",
                            "noadvertising": "False",
                            "lastaction": "New",
                            "content-protection-state": "free",
                            "editor": "tcsimingto",
                            "thumbnailTiny": "/-mm-/a78a350a30c684be2708e87acb5456852262ba3e/c=0-0-1847-1391&r=115x86/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg",
                            "slidecount": "9",
                            "interactive": "false",
                            "topic": "travel_destinations",
                            "aws": "travel/destinations"
                        },
                        "crops": {
                            "1_1": "http://www.gannett-cdn.com/-mm-/a9b08a2e31418823df965721e1dc292e37791efc/c=0-0-1236-1239/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg",
                            "4_3": "http://www.gannett-cdn.com/-mm-/24af3c5fb5c3b511ceecce2f3785ec3ee313e0a4/c=0-0-1847-1391/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg",
                            "3_4": "http://www.gannett-cdn.com/-mm-/2ed8f1ae8707efb6b2aace041308e13638d2e595/c=454-28-1474-1391/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg",
                            "16_9": "http://www.gannett-cdn.com/-mm-/f9b0466f5ffd723b28d55d669625d2611e75ad17/c=0-32-2048-1189/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg",
                            "9_16": "http://www.gannett-cdn.com/-mm-/84a08a662ec5f1d1a941c1d6b03df89c0f404fd4/c=413-0-1191-1391/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg",
                            "front_thumb": "http://www.gannett-cdn.com/-mm-/4158ee1aa28362d44dec7be6004ddccc152b3af6/c=0-0-1257-1079/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg"
                        },
                        "document": null
                    }
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2794707"
                        },
                        {
                            "type": "text",
                            "value": "And a vampire shall lead them."
                        },
                        {
                            "type": "text",
                            "value": "Well, to be fair, Alexander Skarsgard is not a vampire, he just plays one on TV, in HBO's True Blood."
                        },
                        {
                            "type": "text",
                            "value": "But the Swedish-born actor, who plays Norse vampire Eric Northman in Blood, has joined the American team racing against Prince Harry's British team and British actor Dominic West's Canadian/Australian team in a grueling trek to the South Pole this winter to showcase wounded veterans."
                        },
                        {
                            "type": "text",
                            "value": "It's called the Walking With The Wounded South Pole Allied Challenge, and the co-ed teams are made up of veterans with physical and/or mental injuries sustained in the line of duty. The celebs are there to help raise the profile of the effort."
                        },
                        {
                            "type": "text",
                            "value": "Prince Harry, a captain in the British Army and a royal patron of wounded-vets charities, is probably the most famous celeb on the teams, but West, best known in the USA for beloved The Wire, is a boldfaced name, too."
                        },
                        {
                            "type": "text",
                            "value": "Now add Skarsgard, 37, a former Swedish marine, to the training sessions in Iceland and Colorado, which themselves have been tough going. Harry even spent 24 hours recently locked in an ice chamber to prepare for the race."
                        },
                        {
                            "type": "text",
                            "value": "Starting in mid-November and continuing four weeks into December (the summer season Down Under), the three teams are going to slog 208 miles across the Antarctic plateau toward the pole in what some polar experts are calling the largest modern-day expedition of its kind."
                        },
                        {
                            "type": "asset",
                            "value": "2795045"
                        },
                        {
                            "type": "text",
                            "value": "The idea is to raise money for walking-wounded charities in all the countries involved, to demonstrate the strength of human endurance, and to show that the walking wounded can make a difference."
                        },
                        {
                            "type": "text",
                            "value": "\"I'm honored to be working and training alongside these soldiers to raise money and awareness for this very worthy cause,\" Skarsgard said in a statement issued by Walking With The Wounded."
                        },
                        {
                            "type": "text",
                            "value": "The U.S. team was thrilled to get him. \"He is a great asset and has bonded really well with all the team members during training,\" added the U.S. team's polar guide, Inge Solheim."
                        },
                        {
                            "type": "text",
                            "value": "Each team will include experienced polar guides and medical personnel; they're not going to let high-value actors and the fourth-in-line to the British throne, to say nothing of the veterans, set off across the icy landscape to face blizzards, treacherous crevasses, winds of up to 50 mph and temperatures way, way below zero on their own."
                        },
                        {
                            "type": "text",
                            "value": "In a goofy irony, Skarsgard recently made headlines in an icy tableau: it's a picture of him lounging naked — on an icy mountaintop in Sweden — in a lawn chair, with a book strategically placed over his man parts. It was from a scene in the Blood season finale last month, and it immediately went viral."
                        }
                    ],
                    "id": 2794457,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Skarsgard of 'True Blood' to race Prince Harry to pole",
                        "shortHeadline": "Alexander Skarsgard joins Yanks team",
                        "byline": "Maria Puente, USA TODAY ",
                        "editedHeadline": null,
                        "storyabstract": "And a vampire shall lead them. Well, to be fair, Alexander Skarsgard is not a vampire, he just plays one on TV, in HBO's True Blood. But the Swedish-born actor, who plays Norse vampire Eric Northman in Blood, has joined the American team racing against Prince Harry's British team and British actor Dominic West's Canadian/Australian team in a grueling trek to the South Pole this winter to showcase wounded veterans. It's called the Walking With The Wounded South Pole Allied Challenge, and the co-ed teams are made up of veterans with physical and/or mental injuries sustained in the line of duty. The celebs are there to help raise the profile of the effort.",
                        "brief": "Swedish-born Skarsgard joins Yank team racing Prince Harry team to South Pole for charity.",
                        "storyhighlights": [
                            "Swedish-born actor to join team of Yanks in South Pole race",
                            "Skarsgard already in training for a tough new role",
                            "Royal prince and actor Dominic West among the celebrity competitors"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T16:35:47.281-04:00",
                            "feeddateline": "2013-09-10T16:35:47.281-04:00",
                            "published": "2013-09-10T20:06:07Z",
                            "lastupdated": "2013-09-10T20:35:47Z"
                        },
                        "ssts": {
                            "section": "life",
                            "subsection": "people",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/life/people/2013/09/10/skarsgard-of-true-blood-to-race-prince-harry-to-south-pole/2794457/",
                            "shorturl": "http://usat.ly/17OmpVg",
                            "mobileurl": "http://usat.ly/17OmpVg"
                        },
                        "firstAsset": 2794707,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "entertainment/celebrity",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2795045,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "2448",
                                    "oImageWidth": "3264",
                                    "sImageHeight": "375",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Walking With The Wounded",
                                    "alternate": null,
                                    "title": "Alexander Skarsgard and Team US",
                                    "caption": "Alexander Skarsgard joins American team racing to South Pole this winter, now in training. Team includes Mark Wise, Inge Solheim, Skarsgard, Ivan Castro, Margaux Mange, Therese Frentz.",
                                    "datephototaken": "9-2-2013",
                                    "cutline": "Alexander Skarsgard joins American team racing to South Pole this winter, now in training. Team includes Mark Wise, Inge Solheim, Skarsgard, Ivan Castro, Margaux Mange, Therese Frentz.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "Alexander Skarsgard and Team US.JPG",
                                    "imgIndex": "1378844806000",
                                    "imgUniqueName": "1378844806000-Alexander-Skarsgard-and-Team-US.JPG",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378844806000-Alexander-Skarsgard-and-Team-US.JPG",
                                    "smallbasename": "/-mm-/3d5569507733ca056af5edaf0a2a8036c559fb13/r=500x375/local/-/media/USATODAY/test/2013/09/10/1378844806000-Alexander-Skarsgard-and-Team-US.JPG",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378844806000-Alexander-Skarsgard-and-Team-US.JPG",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/b3dcd1aaad6bc7f7e9535aa1fb84381a3d7ccd15/c=391-0-2839-2448/local/-/media/USATODAY/test/2013/09/10/1378844806000-Alexander-Skarsgard-and-Team-US.JPG",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/209496ef8e15ec974055f2b972cb017799a2d254/c=0-0-3264-2448/local/-/media/USATODAY/test/2013/09/10/1378844806000-Alexander-Skarsgard-and-Team-US.JPG",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/3097b4a1c6271d4d7b096a5d5858bd130f19ea84/c=711-0-2545-2448/local/-/media/USATODAY/test/2013/09/10/1378844806000-Alexander-Skarsgard-and-Team-US.JPG",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/7fcbbe14539d91a7a2482c84c28995240bea6dcf/c=0-496-3264-2337/local/-/media/USATODAY/test/2013/09/10/1378844806000-Alexander-Skarsgard-and-Team-US.JPG",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/420d3f7de4a9a8a15958421492d1aac149e92988/c=940-0-2310-2448/local/-/media/USATODAY/test/2013/09/10/1378844806000-Alexander-Skarsgard-and-Team-US.JPG",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/1174530845b52947598c2e314296955daf2a0bad/c=195-0-3061-2448/local/-/media/USATODAY/test/2013/09/10/1378844806000-Alexander-Skarsgard-and-Team-US.JPG"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2794707,
                            "position": 2,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "3000",
                                    "oImageWidth": "2408",
                                    "sImageHeight": "400",
                                    "sImageWidth": "321",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Brad Barket Getty Images for Moet & Chandon",
                                    "alternate": null,
                                    "title": "Alexander Skarsgard",
                                    "caption": "Actor Alexander Skarsgard in New York on Sept. 9/.",
                                    "datephototaken": "9-10-2013",
                                    "cutline": "Actor Alexander Skarsgard in New York on Sept. 9/.",
                                    "orientation": "vertical",
                                    "OrigImageName": "GTY 180167437.jpg",
                                    "imgIndex": "1378842914000",
                                    "imgUniqueName": "1378842914000-GTY-180167437.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378842914000-GTY-180167437.jpg",
                                    "smallbasename": "/-mm-/a747867186ceb7f4609ee2adda8eb9b40b2ab491/r=321x400/local/-/media/USATODAY/test/2013/09/10/1378842914000-GTY-180167437.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378842914000-GTY-180167437.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/7ef3d82f9f91576949b436ebf98a9b6fe6377724/c=0-82-2408-2490/local/-/media/USATODAY/test/2013/09/10/1378842914000-GTY-180167437.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/8c605777402c77938605af672c4621f337399e0f/c=0-82-2408-1890/local/-/media/USATODAY/test/2013/09/10/1378842914000-GTY-180167437.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/48256a4c23de84bda9f0cb5a87e5bf4f0d1d3a37/c=30-0-2280-3000/local/-/media/USATODAY/test/2013/09/10/1378842914000-GTY-180167437.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/e76a816cb783865d544b396e7181c2c74711fe51/c=0-82-2408-1440/local/-/media/USATODAY/test/2013/09/10/1378842914000-GTY-180167437.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/1a9dfe6f10e8d2fb0b1f4fa68f4b2e33bfc176f6/c=30-0-1710-3000/local/-/media/USATODAY/test/2013/09/10/1378842914000-GTY-180167437.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/3ca64e9e040471072070fd9bb8e997962d73613e/c=0-82-2408-2137/local/-/media/USATODAY/test/2013/09/10/1378842914000-GTY-180167437.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2675685,
                            "position": 3,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "398",
                                    "oImageWidth": "467",
                                    "sImageHeight": "400",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "HBO",
                                    "alternate": null,
                                    "title": "trueblood",
                                    "caption": "Alexander Skarsgard lounges on the ice in the 'True Blood' season finale.",
                                    "datephototaken": null,
                                    "cutline": "Alexander Skarsgard lounges on the ice in the 'True Blood' season finale.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "trueblood.jpg",
                                    "imgIndex": "1377002049000",
                                    "imgUniqueName": "1377002049000-trueblood.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/08/20/1377002049000-trueblood.jpg",
                                    "smallbasename": "/-mm-/50117b4bfe181f32492ec4d414638d7c08e560e6/r=500x400/local/-/media/USATODAY/test/2013/08/20/1377002049000-trueblood.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/08/20/1377002049000-trueblood.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/238f696c96f83823f602faa04a070ab456c35afb/c=26-0-399-398/local/-/media/USATODAY/test/2013/08/20/1377002049000-trueblood.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/f947e04b24fc3e688467c42ef906aaffcc3381f4/c=0-7-437-359/local/-/media/USATODAY/test/2013/08/20/1377002049000-trueblood.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/3978cb7b0e56d9e09779d37fddcefcd7cb7d3bec/c=100-0-381-398/local/-/media/USATODAY/test/2013/08/20/1377002049000-trueblood.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/e2de005c77c85445577ab44524d07672314ff2f3/c=0-7-437-271/local/-/media/USATODAY/test/2013/08/20/1377002049000-trueblood.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/f695d8791bf205932a3a628f21272eca839cac45/c=194-0-403-398/local/-/media/USATODAY/test/2013/08/20/1377002049000-trueblood.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/3585253bfb83e2b98cc0c61605cad655e4e95cb8/c=12-0-437-386/local/-/media/USATODAY/test/2013/08/20/1377002049000-trueblood.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2794547"
                        },
                        {
                            "type": "text",
                            "value": "Oscar De La Hoya, the Golden Boy who founded the company named for him that will promote this weekend's big fight between Floyd Mayweather and Canelo Alvarez, announced Tuesday that he will not be at the fight."
                        },
                        {
                            "type": "text",
                            "value": "De La Hoya, who has battled alcohol and drug addiction in the past, will voluntarily check himself into a treatment center."
                        },
                        {
                            "type": "text",
                            "value": "In a statement, De La Hoya said, \"Canelo Alvarez and I have big fights coming up this weekend. His is in the ring and mine in treatment. I will not be at the fight to cheer Canelo to victory since I have voluntarily admitted myself to a treatment facility."
                        },
                        {
                            "type": "text",
                            "value": "\"I explained this to Canelo, and he understood that my health and long-term recovery from my disease must come first. Thank you for your understanding. I ask for your support during this difficult time and for me and my family."
                        },
                        {
                            "type": "text",
                            "value": "De La Hoya and Mayweather have been feuding recently. After De La Hoya picked Alvarez to knock out Mayweather this weekend, the pound-for-pound champion told the Los Angeles Times, \"I feel like Oscar couldn't beat the king so he wants to see someone else beat the king."
                        },
                        {
                            "type": "text",
                            "value": "\"Oscar ... likes to run around with this Golden Boy image, which we know  really is [false]. He's always been jealous of me. I'm the total package.\""
                        },
                        {
                            "type": "text",
                            "value": "De La Hoya told the Times recently that he attends recovery meetings six days a week, sometimes twice a day."
                        },
                        {
                            "type": "text",
                            "value": "Mayweather, who doesn't drink or smoke, said De La Hoya embarrasses himself at public appearances and added, \"I wouldn't even show up to the fights if I were him.\""
                        },
                        {
                            "type": "text",
                            "value": "Mayweather defeated De La Hoya in 2007 in a close fight, which ended up being the biggest pay-per-view seller of all time at 2.4 million buys."
                        }
                    ],
                    "id": 2794509,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "De La Hoya to miss Mayweather fight because of rehab",
                        "shortHeadline": "De La Hoya to miss Mayweather fight",
                        "byline": "Bob Velin, USA TODAY Sports",
                        "editedHeadline": "De La Hoya to miss Mayweather fight",
                        "storyabstract": "Oscar De La Hoya, the Golden Boy who founded the company named for him that will promote this weekend's big fight between Floyd Mayweather and Canelo Alvarez, announced Tuesday that he will not be at the fight. De La Hoya, who has battled alcohol and drug addiction in the past, will voluntarily check himself into a treatment center. In a statement, De La Hoya said, \"Canelo Alvarez and I have big fights coming up this weekend. His is in the ring and mine in treatment. I will not be at the fight to cheer Canelo to victory since I have voluntarily admitted myself to a treatment facility. \"I explained this to Canelo, and he understood that my health and long-term recovery from my disease must come first. Thank you for your understanding. I ask for your support during this difficult time and for me and my family.",
                        "brief": "De La Hoya will voluntarily check himself into a treatment center.",
                        "storyhighlights": [
                            "De La Hoya%27s company will promote Mayweather-Alvarez fight",
                            "He picked Alvarez to knock out Mayweather",
                            "Mayweather says De La Hoya has been jealous of him"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T15:52:42.5603821-04:00",
                            "feeddateline": "2013-09-10T15:52:42.5603821-04:00",
                            "published": "2013-09-10T19:23:51Z",
                            "lastupdated": "2013-09-10T19:52:42Z"
                        },
                        "ssts": {
                            "section": "sports",
                            "subsection": "boxing",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/sports/boxing/2013/09/10/oscar-de-la-hoya-rehab-mayweather-fight/2794509/",
                            "shorturl": "http://usat.ly/17OnYSY",
                            "mobileurl": "http://usat.ly/17OnYSY"
                        },
                        "firstAsset": 2794547,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "sports/boxing",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2794547,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "1416",
                                    "oImageWidth": "2128",
                                    "sImageHeight": "332",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Sean Dougherty, USA TODAY Sports",
                                    "alternate": null,
                                    "title": "2013-9-10-oscar-de-la-hoya",
                                    "caption": "Oscar de la Hoya speaks during a news conference on March 3, 2010.",
                                    "datephototaken": "3-3-2010",
                                    "cutline": "Oscar de la Hoya speaks during a news conference on March 3, 2010.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "XXX DSC_6026.JPG",
                                    "imgIndex": "1378840849000",
                                    "imgUniqueName": "1378840849000-XXX-DSC-6026.JPG",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378840849000-XXX-DSC-6026.JPG",
                                    "smallbasename": "/-mm-/521cd80a4fb9f1f1edf37d025629b379daee5bba/r=500x332/local/-/media/USATODAY/test/2013/09/10/1378840849000-XXX-DSC-6026.JPG",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378840849000-XXX-DSC-6026.JPG",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/ebdf7954358cb48135d7364fd605b9b48ad87f7a/c=353-0-1766-1416/local/-/media/USATODAY/test/2013/09/10/1378840849000-XXX-DSC-6026.JPG",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/160b93f996da4944a2b4b74ebd15ea220919524b/c=8-0-1889-1416/local/-/media/USATODAY/test/2013/09/10/1378840849000-XXX-DSC-6026.JPG",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/165142016b2c419c981b9df4ff85f76937ea3ca0/c=370-0-1430-1416/local/-/media/USATODAY/test/2013/09/10/1378840849000-XXX-DSC-6026.JPG",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/3f4f690c4808682cd70c659f5ca57912859e3b94/c=0-63-2128-1266/local/-/media/USATODAY/test/2013/09/10/1378840849000-XXX-DSC-6026.JPG",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/575433455557b1f6ce3bff1fc71e844b7aa2e743/c=434-0-1225-1416/local/-/media/USATODAY/test/2013/09/10/1378840849000-XXX-DSC-6026.JPG",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/0874a5637e3d016ba6cb8886e4712fc4aa8c1823/c=234-0-1885-1416/local/-/media/USATODAY/test/2013/09/10/1378840849000-XXX-DSC-6026.JPG"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2791845"
                        },
                        {
                            "type": "text",
                            "value": "Hoax. Prank. Jimmy Kimmel video."
                        },
                        {
                            "type": "text",
                            "value": "Call it what you want. It was all a big joke."
                        },
                        {
                            "type": "text",
                            "value": "Last week, a video popped up on YouTube from Caitlin Heller called \"Worst Twerk Fail EVER\" — showing a young woman's disastrous attempt at twerking by candlelight in her room and ending with up with her pants catching on fire. It has been viewed more than 9 million times."
                        },
                        {
                            "type": "text",
                            "value": "It was picked up all over the place, including several television outlets. Some blamed Miley Cyrus' infamous Video Music Awards performance, others pointed out that twerking can be very dangerous."
                        },
                        {
                            "type": "asset",
                            "value": "2792761"
                        },
                        {
                            "type": "text",
                            "value": "On Monday night, Kimmel came clean. \"We made it up,\" he said, explaining it had been shot two months ago."
                        },
                        {
                            "type": "text",
                            "value": "He introduced the stunt woman in the video and explained she was \"sworn to secrecy,\" which caused her to get \"numerous\" comments, including a \"worried\" Facebook message from an ex-boyfriend."
                        },
                        {
                            "type": "text",
                            "value": "\"Well, thank you for helping us deceive the world and hopefully put an end to twerking forever,\" Kimmel told her."
                        },
                        {
                            "type": "text",
                            "value": "      &amp;amp;amp;amp;amp;amp;amp;amp;lt;!--iframe--&amp;amp;amp;amp;amp;amp;amp;amp;gt;    "
                        }
                    ],
                    "id": 2791829,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Jimmy Kimmel: 'Twerking girl on fire' video was a hoax",
                        "shortHeadline": "Kimmel: 'Twerking girl on fire' video was a hoax",
                        "byline": "Ann Oldenburg, USA TODAY",
                        "editedHeadline": null,
                        "storyabstract": "Hoax. Prank. Jimmy Kimmel video. Call it what you want. It was all a big joke. Last week, a video popped up on YouTube from Caitlin Heller called \"Worst Twerk Fail EVER\" — showing a young woman's disastrous attempt at twerking by candlelight in her room and ending with up with her pants catching on fire. It has been viewed more than 9 million times. It was picked up all over the place, including several television outlets. Some blamed Miley Cyrus' infamous Video Music Awards performance, others pointed out that twerking can be very dangerous. On Monday night, Kimmel came clean. \"We made it up,\" he said, explaining it had been shot two months ago.",
                        "brief": "That viral video? It was a Jimmy Kimmel joke.",
                        "storyhighlights": null,
                        "dates": {
                            "embargodate": "2013-09-10T12:55:21.769-04:00",
                            "feeddateline": "2013-09-10T12:55:21.769-04:00",
                            "published": "2013-09-10T13:45:29Z",
                            "lastupdated": "2013-09-10T16:55:22Z"
                        },
                        "ssts": {
                            "section": "life",
                            "subsection": "people",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/life/people/2013/09/10/jimmy-kimmel-admits-twerking-girl-on-fire-video-hoax/2791829/",
                            "shorturl": "http://usat.ly/17NGP0E",
                            "mobileurl": "http://usat.ly/17NGP0E"
                        },
                        "firstAsset": 2792761,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "entertainment/celebrity",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2792761,
                            "position": 1,
                            "type": "video",
                            "status": "published",
                            "url": "http://www.usatoday.com/videos/news/usanow/2013/09/10/2792761/",
                            "mobileUrl": "http://usat.ly/1fVqmIz",
                            "ssts": {
                                "section": "news",
                                "subsection": "usanow",
                                "topic": "",
                                "subtopic": "",
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "brightcoveid": "2662671497001",
                                    "origin": "1",
                                    "viraldistribution": "true",
                                    "autoarchive": "true",
                                    "adsenabled": "True",
                                    "propertyid": "1",
                                    "brightcoveaccount": "29906170001",
                                    "datecreated": "9/10/2013 11:46:48 AM",
                                    "user": "krezaei",
                                    "status": "complete",
                                    "name": "Gotcha! Kimmel's fire twerk and other hoaxes | USA NOW video",
                                    "shortdescription": "Natalie DiBlasio hosts USA NOW for Sept. 10, 2013, revealing Jimmy Kimmel's fire twerk and other hoaxes.",
                                    "tags": null,
                                    "thumbnail": "http://www.gannett-cdn.com/-mm-/33d97f8a03d5ea06baca0f7a30eca34c8bd87643/r=500x281/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                                    "videostill": "http://www.gannett-cdn.com/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                                    "startdate": null,
                                    "enddate": null,
                                    "length": "02:30",
                                    "imageid": "2792773",
                                    "thumbnailTiny": "http://www.gannett-cdn.com/-mm-/79345de1105098bc83d9959afbaa38462349c9a5/c=307-0-1743-1080&r=115x86/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                                    "bcunfilteredtoken": null,
                                    "bcreadtoken": null,
                                    "bcwritetoken": null,
                                    "credit": "USA TODAY, USA NOW, Kaveh Rezaei,",
                                    "excludemobile": "False",
                                    "excluderightnow": "False",
                                    "majorchange": "False",
                                    "content-protection-state": "free",
                                    "lastaction": "Published",
                                    "interactive": "false",
                                    "topic": "news,news_nation,news_usanow,USA-NOW",
                                    "series": "USA-NOW",
                                    "aws": "news/usanow"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/5d31c1b78a25586efb70e7e00ee8dc4bc4f3e3dd/c=449-0-1528-1080/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/75d4484055e00983b06990f6cd16943b732aa418/c=307-0-1743-1080/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/346df45532b46368868f28f82b30b33e2b1ee51c/c=549-0-1359-1080/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/c9502e949ca9c5647cfa011817e4573291c0eb90/c=7-0-1916-1080/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/6b73cf4af22851d6a414a210f591a63835c6032b/c=679-0-1282-1080/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/f8891068735fb5a480da77c4aaf1ef7fa66aa99d/c=410-0-1674-1080/local/-/media/USATODAY/USATODAY/2013/09/10/1378828058000-Jimmy-Kimmel.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2791845,
                            "position": 2,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "315",
                                    "oImageWidth": "465",
                                    "sImageHeight": "338",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Jimmy Kimmel Live",
                                    "alternate": null,
                                    "title": "Jimmy Kimmel hoax",
                                    "caption": "Jimmy Kimmel came clean about the twerking video on Monday's 'Jimmy Kimmel Live' show.",
                                    "datephototaken": null,
                                    "cutline": "Jimmy Kimmel came clean about the twerking video on Monday's 'Jimmy Kimmel Live' show.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "Jimmy Kimmel hoax.jpg",
                                    "imgIndex": "1378820496000",
                                    "imgUniqueName": "1378820496000-Jimmy-Kimmel-hoax.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378820496000-Jimmy-Kimmel-hoax.jpg",
                                    "smallbasename": "/-mm-/a57cb87523081f89514984f1cf4f0c13e0b2f571/r=500x338/local/-/media/USATODAY/test/2013/09/10/1378820496000-Jimmy-Kimmel-hoax.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378820496000-Jimmy-Kimmel-hoax.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/e0e868379f12baecc6245ae3552cf9de13af3400/c=66-0-380-315/local/-/media/USATODAY/test/2013/09/10/1378820496000-Jimmy-Kimmel-hoax.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/dae5f643de05ad105be4efbb9bde1903c05e1a70/c=23-0-441-315/local/-/media/USATODAY/test/2013/09/10/1378820496000-Jimmy-Kimmel-hoax.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/3528f34fef6f0b5ab41e9d667ce9791b01d659e0/c=212-0-448-315/local/-/media/USATODAY/test/2013/09/10/1378820496000-Jimmy-Kimmel-hoax.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/d3ae12cdeb90aa529e3e83af95a48cacf6c2b6b8/c=0-6-465-269/local/-/media/USATODAY/test/2013/09/10/1378820496000-Jimmy-Kimmel-hoax.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/fb9160511bc398fca177a03694d4bf070315116d/c=220-0-396-315/local/-/media/USATODAY/test/2013/09/10/1378820496000-Jimmy-Kimmel-hoax.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/dce654e86fc46f34e6626bd6e01c8aa00ffc1707/c=36-0-403-315/local/-/media/USATODAY/test/2013/09/10/1378820496000-Jimmy-Kimmel-hoax.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "id": 2786931,
                    "position": 0,
                    "type": "video",
                    "status": "published",
                    "url": "http://www.usatoday.com/videos/news/nation/2013/09/09/2786931/",
                    "mobileUrl": "http://usat.ly/1fR2IwJ",
                    "ssts": {
                        "section": "news",
                        "subsection": "nation",
                        "topic": "",
                        "subtopic": "",
                        "storysubject": null
                    },
                    "metaData": {
                        "items": {
                            "brightcoveid": "2659987754001",
                            "name": "New gator record set, monsterous 741 lbs!",
                            "shortdescription": "Team Gatorslayer shattered the Mississippi state record for heaviest alligator with a 741 pounder.",
                            "tags": "clarion ledger,Clarion-Ledger,vpc,741 pounds,water cooler,mississippi,team gatorslayer,Record,alligator,outdoors,hunting,National News,offbeat",
                            "source": "VPC",
                            "origin": "VPC",
                            "autoarchive": "true",
                            "adsenabled": "True",
                            "startdate": null,
                            "enddate": null,
                            "gannetttracking": "VPC_GIANT GATOR MISS-W090913Clarion-Ledger",
                            "longdescription": null,
                            "viraldistribution": "true",
                            "user": "mafowler",
                            "datecreated": "9/9/2013 12:26:27 PM",
                            "credit": "VPC",
                            "propertyid": "1",
                            "brightcoveaccount": "29906170001",
                            "thumbnail": "http://bc_gvpc.edgesuite.net/img/963482463001/201309/3870/963482463001_2659911521001_thumbnail-for-video-2659948126001.jpg?pubId=963482463001",
                            "videostill": "http://bc_gvpc.edgesuite.net/img/963482463001/201309/870/963482463001_2659911522001_video-still-for-video-2659948126001.jpg?pubId=963482463001",
                            "status": "complete",
                            "length": "01:13",
                            "excludemobile": "False",
                            "excluderightnow": "False",
                            "majorchange": "False",
                            "content-protection-state": "free",
                            "lastaction": "Published",
                            "interactive": "false",
                            "topic": "news_nation",
                            "aws": "news/national"
                        },
                        "crops": null,
                        "document": null
                    }
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2787209"
                        },
                        {
                            "type": "text",
                            "value": "Autumn is the time of year when our favorite hikes become even more breathtaking -- alight with the vibrant reds, oranges and yellows of fall."
                        },
                        {
                            "type": "text",
                            "value": "In other seasons, leaves appear green, due to chlorophyll (the pigment that allows them to capture sunlight and produce nutrients), however the arrival of cooler temperatures and shorter days signals the tree to stop producing it. This is when -- to our delight -- the other colors in the leaves begin to show."
                        },
                        {
                            "type": "text",
                            "value": "While there are many great places to soak up the amazing sights of autumn, we've selected a few great hikes around the country (as well as one we couldn't resist abroad) where you can fully immerse yourself in the fall season. On these trails, you have the chance to enjoy not just magnificent colors, but also majestic waterfalls, views of surrounding mountains and towns, alpine lakes and the refreshing smell of damp earth."
                        },
                        {
                            "type": "text",
                            "value": "Before you head out, it's worthwhile to note that you can predict the intensity of fall colors based on the weather. While low temperatures above freezing and rainy or overcast days can amplify them, early frost will dampen the shades. In addition, a little research on the types of trees can also help you predict what you'll see. The Arbor Day Foundation provides a list of tree species and their hues. For instance, the bald cypress is known to turn orange-red in the fall, while the black tupelo will show many colors including yellow, orange, bright red, purple and scarlet."
                        },
                        {
                            "type": "text",
                            "value": "    Skyline Trail: Babcock State Park: Danese, W.Va.       "
                        },
                        {
                            "type": "text",
                            "value": "Beginning at Manns Creek Picnic Area, this flat, four-mile out-and-back trip will take approximately two hours. This is just one great hike in a 4,127-acre park with 20 miles of trails (click here for a trail map). The many paths can take you through Manns Creek Gorge, as well as past streams and a working gristmill."
                        },
                        {
                            "type": "text",
                            "value": "Enchantment Lakes, Washington"
                        },
                        {
                            "type": "text",
                            "value": "The traditional path to Enchantment Lakes is trail 1553. It starts at the Snow Lakes trailhead about four miles outside of Leavenworth, Washington, and will take you on a grueling 10-mile hike with 6,000 feet of elevation gain. For this reason, many people choose to take two cars and park one at each end of the trail. You can also camp overnight and awake to the sight of an alpine lake and gorgeous yellow autumn leaves on the surrounding larch trees."
                        },
                        {
                            "type": "text",
                            "value": "Appalachian Trail: Great Smoky Mountains National Park "
                        },
                        {
                            "type": "text",
                            "value": "Rather than tackling the entire 2,200 miles of this National Scenic Trail, you can opt for a small but spectacular section within Great Smoky Mountains National Park. Drive to the parking area at Newfound Gap and take the Appalachian Trail to Indian Gap. The 3.4-mile roundtrip will give you a taste of this historic route and allow you to see beautiful fall foliage."
                        },
                        {
                            "type": "text",
                            "value": "Sherman Peak: Bear River Range, Idaho "
                        },
                        {
                            "type": "text",
                            "value": "At 9,682 feet, Sherman Peak is the highest mountain in this region and therefore provides the best view of fall colors in the area. It can be accessed via the Bear River Range Highline Trail from the parking area near the trailhead off Eightmile Creek Road. In total, it's  a 3.5-mile hike to the summit."
                        },
                        {
                            "type": "text",
                            "value": "Trail of Ten Falls: Silver Falls State Park, Ore. "
                        },
                        {
                            "type": "text",
                            "value": "The eight-mile Trail of Ten Falls in Silver Falls State Park will take you past a series of gorgeous cascades accented with the vibrant oranges, reds and yellows of fall. Day-use permits are required year-round and can be purchased at the park entrance booth."
                        },
                        {
                            "type": "text",
                            "value": "The Stowe Pinnacle Trail: Vermont "
                        },
                        {
                            "type": "text",
                            "value": "The first week of October is the best time to do this moderate hike in northwestern Vermont. The steep, 2.8-mile-long trail will deliver you to a bald summit with views of the Green Mountains (including the famed Camel's Hump and Mt. Mansfield) and the Worchester Range to the west, as well as Hogback Mountain to the southeast."
                        },
                        {
                            "type": "text",
                            "value": "Ice Age National Scenic Trail: Devil's Lake State Park, Wis. "
                        },
                        {
                            "type": "text",
                            "value": "Devil's Lake State Park is one of nine Ice Age National Scientific Reserve units. On the scenic trail, you can find incredible glacial features and breathtaking views that highlight some the best autumn colors in the Midwest. While the entire loop is 13.7 miles, you can also take the 4.5-mile Sauk Point Trail or 1.8-mile Roznos Meadow Trail."
                        },
                        {
                            "type": "text",
                            "value": "May Lake: Yosemite National Park, Calif. "
                        },
                        {
                            "type": "text",
                            "value": "This family-friendly hike starts at the Snow Flat trailhead and covers 1.3 miles. Because it's a relatively easy jaunt, you can expect not just the beautiful granite peaks and sparkling blue waters of Yosemite, but also the crowds. Still, the view of May Lake below 10,000-foot Mount Hoffman makes this popular hike worth the (short) trek."
                        },
                        {
                            "type": "text",
                            "value": "Hoenderloo Forest Walk: Hoge Veluwe National Park, Netherlands "
                        },
                        {
                            "type": "text",
                            "value": "We know, we know -- this isn't exactly a trip you can do over the weekend. However, our shout-out to Hoge Veluwe National Park is a reminder that there are incredible locations across the world to see beautiful foliage. If you find yourself in the Netherlands in the fall, try the forest walk starting at the Hoenderloo entrance. In total, this trail is approximately 11 miles long, but from September 1-30 (the mating season for deer in the park) visitors are only allowed to walk about 8.5 miles of the trail."
                        }
                    ],
                    "id": 2786717,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Incredible fall foliage hikes",
                        "shortHeadline": "Incredible fall foliage hikes",
                        "byline": "Megan Taylor Morrison, TheActiveTimes.com",
                        "editedHeadline": null,
                        "storyabstract": "Autumn is the time of year when our favorite hikes become even more breathtaking -- alight with the vibrant reds, oranges and yellows of fall. In other seasons, leaves appear green, due to chlorophyll (the pigment that allows them to capture sunlight and produce nutrients), however the arrival of cooler temperatures and shorter days signals the tree to stop producing it. This is when -- to our delight -- the other colors in the leaves begin to show. While there are many great places to soak up the amazing sights of autumn, we've selected a few great hikes around the country (as well as one we couldn't resist abroad) where you can fully immerse yourself in the fall season. On these trails, you have the chance to enjoy not just magnificent colors, but also majestic waterfalls, views of surrounding mountains and towns, alpine lakes and the refreshing smell of damp earth.",
                        "brief": "Enjoy majestic waterfalls, alpine lakes and the refreshing smell of damp earth.",
                        "storyhighlights": null,
                        "dates": {
                            "embargodate": "2013-09-10T07:46:35.229-04:00",
                            "feeddateline": "2013-09-10T07:46:35.229-04:00",
                            "published": "2013-09-10T11:46:36Z",
                            "lastupdated": "2013-09-10T11:46:36Z"
                        },
                        "ssts": {
                            "section": "travel",
                            "subsection": "destinations",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/travel/destinations/2013/09/10/fall-autumn-foliage-hikes/2786717/",
                            "shorturl": "http://usat.ly/17NvPQH",
                            "mobileurl": "http://usat.ly/17NvPQH"
                        },
                        "firstAsset": 2786957,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "travel/destinations",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2787209,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "1366",
                                    "oImageWidth": "2048",
                                    "sImageHeight": "333",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Flickr/Ian Sane",
                                    "alternate": null,
                                    "title": "foliage hikes 05",
                                    "caption": "Trail of Ten Falls: Silver Falls State Park, Ore.: \nThe eight-mile Trail of Ten Falls in Silver Falls State Park will take you past a series of gorgeous cascades accented with the vibrant oranges, reds and yellows of fall. Day-use permits are required year-round and can be purchased at the park entrance booth.",
                                    "datephototaken": "9/9/2013 12:00:00 AM",
                                    "cutline": "Trail of Ten Falls: Silver Falls State Park, Ore.: \nThe eight-mile Trail of Ten Falls in Silver Falls State Park will take you past a series of gorgeous cascades accented with the vibrant oranges, reds and yellows of fall. Day-use permits are required year-round and can be purchased at the park entrance booth.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "4-silver falls state park oregon flickr ian sane.jpg",
                                    "imgIndex": "1378744165004",
                                    "imgUniqueName": "1378744165004-4-silver-falls-state-park-oregon-flickr-ian-sane.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/USATODAY/2013/09/09/1378744165004-4-silver-falls-state-park-oregon-flickr-ian-sane.jpg",
                                    "smallbasename": "/-mm-/4044b1e7645488621f157de466cf1a990870caa2/r=500x333/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165004-4-silver-falls-state-park-oregon-flickr-ian-sane.jpg",
                                    "keywords": null,
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/USATODAY/2013/09/09/1378744165004-4-silver-falls-state-park-oregon-flickr-ian-sane.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/2a57e6245ae0eeb760c73f280a4358f5c9d81f90/c=389-0-1744-1357/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165004-4-silver-falls-state-park-oregon-flickr-ian-sane.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/3c4ce30eab7400846f4b20b072f09298272a65fd/c=118-0-1921-1357/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165004-4-silver-falls-state-park-oregon-flickr-ian-sane.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/df3d020aa88d057fab4f8da46a545656257503e1/c=589-0-1605-1357/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165004-4-silver-falls-state-park-oregon-flickr-ian-sane.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/25c5b2a8a1141df8b2b36974589d7d62a08dfb29/c=0-73-2048-1230/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165004-4-silver-falls-state-park-oregon-flickr-ian-sane.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/e844c8189daf56cedf0903195783209dc063772e/c=806-8-1564-1366/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165004-4-silver-falls-state-park-oregon-flickr-ian-sane.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/055147ac5313805ed2457ddaac2ed34b670a36f5/c=225-0-1810-1357/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165004-4-silver-falls-state-park-oregon-flickr-ian-sane.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2786957,
                            "position": 2,
                            "type": "gallery",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": "travel",
                                "subsection": "destinations",
                                "topic": "",
                                "subtopic": "",
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "name": "Incredible fall foliage hikes",
                                    "thumbnailPath": "/-mm-/30d078477e2619bda9371aa3fe6088d8945c3335/r=500x339/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg",
                                    "thumbnailAssetId": "2787241",
                                    "thumbnailLock": "True",
                                    "gallerySstsPublishLocation": "travel/destinations",
                                    "suppressVideoPreroll": "False",
                                    "galleryType": "Standard",
                                    "seoName": "incredible-fall-foliage-hikes",
                                    "excludemobile": "False",
                                    "noadvertising": "False",
                                    "lastaction": "New",
                                    "content-protection-state": "free",
                                    "editor": "tcsimingto",
                                    "thumbnailTiny": "/-mm-/a78a350a30c684be2708e87acb5456852262ba3e/c=0-0-1847-1391&r=115x86/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg",
                                    "slidecount": "9",
                                    "interactive": "false",
                                    "topic": "travel_destinations",
                                    "aws": "travel/destinations"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/a9b08a2e31418823df965721e1dc292e37791efc/c=0-0-1236-1239/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/24af3c5fb5c3b511ceecce2f3785ec3ee313e0a4/c=0-0-1847-1391/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/2ed8f1ae8707efb6b2aace041308e13638d2e595/c=454-28-1474-1391/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/f9b0466f5ffd723b28d55d669625d2611e75ad17/c=0-32-2048-1189/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/84a08a662ec5f1d1a941c1d6b03df89c0f404fd4/c=413-0-1191-1391/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/4158ee1aa28362d44dec7be6004ddccc152b3af6/c=0-0-1257-1079/local/-/media/USATODAY/USATODAY/2013/09/09/1378744165008-8-old-grist-mill-mountains-west-virginia-shutterstock.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2793349"
                        },
                        {
                            "type": "asset",
                            "value": "2794071"
                        },
                        {
                            "type": "text",
                            "value": "FRANKFURT — Compact crossovers are what's hot at the Frankfurt Auto Show this year, and Infiniti's new Q30 Concept car, shown here, fits right in with the trend."
                        },
                        {
                            "type": "text",
                            "value": "Infiniti says it's not a coupe, not a hatchback, and not a crossover, but a fusion of all three. That's apparent from the name: After Infiniti scrubbed its alphabet of all but two letters (cars start with the letter \"Q,\"  SUVs and crossovers start with \"QX\") the Q30 moniker indicates the new crossover slots under the QX50 and likely isn't meant for serious off-roading. On the road, it'll be the first new Infiniti that's influenced by three-time Formula One champion and Infinti performance director Sebastian Vettel, who made a surprise appearance on the stage in Frankfurt."
                        },
                        {
                            "type": "text",
                            "value": "The not-a-crossover is also the first offspring of the new Mercedes-Infiniti partnership, which explains why the Infiniti Q30 and Mercedes GLA share the same basic underpinnings. In our opinion, the Q30 is the clear winner in the looks department."
                        },
                        {
                            "type": "text",
                            "value": "According to Infiniti design director Alfonso Albaisa, the new Q30 is \"slim, sleek and flowing,\" featuring a rear end that blurs the line between glass and tail lamps, and a split grille up front. Inside, shiny and matte copper finishes blend together in a dashboard that wouldn't be too far an evolutionary jump from Infiniti's current lineup. Asymmetry is an important design element, with clearly delineated passenger and driver areas."
                        },
                        {
                            "type": "text",
                            "value": "Infiniti President Johan de Nysschen says it's \"younger, aspirational and trend-setting.\" And although the brand concentrated on a compact car this year, de Nysschen promises that expansion will happen at the \"bottom and top end\" — perhaps with an S-Class competitor as a new flagship."
                        },
                        {
                            "type": "text",
                            "value": "Despite the word \"concept,\" the Q30 at the Infiniti stand in Frankfurt is not too far from reality. A production version is expected soon. U.S.-bound Q30s will likely be built alongside the GLA at a new plant in Aguascalientes, Mexico. The plant will open later this year."
                        },
                        {
                            "type": "text",
                            "value": "For more product reviews and news, visit Reviewed.com, a division of USA TODAY, and follow @ReviewedDotCom on Twitter."
                        }
                    ],
                    "id": 2792895,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Infiniti tries to fuse car styles with the Q30",
                        "shortHeadline": "infiniti q30",
                        "byline": "Keith Barry, Reviewed.com / USA Today",
                        "editedHeadline": null,
                        "storyabstract": "FRANKFURT — Compact crossovers are what's hot at the Frankfurt Auto Show this year, and Infiniti's new Q30 Concept car, shown here, fits right in with the trend. Infiniti says it's not a coupe, not a hatchback, and not a crossover, but a fusion of all three. That's apparent from the name: After Infiniti scrubbed its alphabet of all but two letters (cars start with the letter \"Q,\"  SUVs and crossovers start with \"QX\") the Q30 moniker indicates the new crossover slots under the QX50 and likely isn't meant for serious off-roading. On the road, it'll be the first new Infiniti that's influenced by three-time Formula One champion and Infinti performance director Sebastian Vettel, who made a surprise appearance on the stage in Frankfurt.",
                        "brief": "Compact crossovers are hot in Frankfurt this year, and Infiniti's new Q30 fits the trend.",
                        "storyhighlights": null,
                        "dates": {
                            "embargodate": "2013-09-10T16:06:24.1318132-04:00",
                            "feeddateline": "2013-09-10T16:06:24.1318132-04:00",
                            "published": "2013-09-10T18:49:56Z",
                            "lastupdated": "2013-09-10T20:06:24Z"
                        },
                        "ssts": {
                            "section": "money",
                            "subsection": "cars",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/money/cars/2013/09/10/reviewed-infiniti-q30/2792895/",
                            "shorturl": "http://usat.ly/17O3KZx",
                            "mobileurl": "http://usat.ly/17O3KZx"
                        },
                        "firstAsset": 2794071,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "auto",
                        "topic": "at-the-auto-show"
                    },
                    "assets": [
                        {
                            "id": 2794071,
                            "position": 1,
                            "type": "gallery",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": "money",
                                "subsection": "cars",
                                "topic": "",
                                "subtopic": "",
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "name": "Infiniti's Q30 coupe-hatch-crossover (and Mercedes cousin)",
                                    "thumbnailPath": "/-mm-/aaa527894a8a41c93d8ce192d1488018c3d414d7/r=500x326/local/-/media/USATODAY/USATODAY/2013/09/10/1378838419000-AFP-522743333.jpg",
                                    "thumbnailAssetId": "2794237",
                                    "thumbnailLock": "False",
                                    "gallerySstsPublishLocation": "money/cars",
                                    "suppressVideoPreroll": "False",
                                    "galleryType": "Standard",
                                    "seoName": "infinitis-q30-coupe-hatch-crossover-and-mercedes-cousin",
                                    "excludemobile": "False",
                                    "noadvertising": "False",
                                    "lastaction": "New",
                                    "content-protection-state": "free",
                                    "editor": "fmeier",
                                    "slidecount": "8",
                                    "interactive": "false",
                                    "topic": "money,money_cars,AtTheAutoShow",
                                    "aws": "auto"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/8015781b1d75de408e5e1ef29d2dd78260e4d88c/c=245-0-2527-2288/local/-/media/USATODAY/USATODAY/2013/09/10/1378838419000-AFP-522743333.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/e266a448cc39af9abd60833371948f066c66a1f8/c=259-0-3297-2288/local/-/media/USATODAY/USATODAY/2013/09/10/1378838419000-AFP-522743333.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/1039153b80e74b753fce3e610b81619a80071942/c=896-0-2611-2288/local/-/media/USATODAY/USATODAY/2013/09/10/1378838419000-AFP-522743333.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/d26cccb82f327e21208e8a6f9f5a7c705803dd76/c=0-168-3500-2147/local/-/media/USATODAY/USATODAY/2013/09/10/1378838419000-AFP-522743333.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/8bfebe54daa54bc0cec2f31bae2ad9fc54da1ee2/c=1113-0-2394-2288/local/-/media/USATODAY/USATODAY/2013/09/10/1378838419000-AFP-522743333.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/41c7eab6279c2d3b661af702e4b24939c3059de3/c=294-0-2961-2288/local/-/media/USATODAY/USATODAY/2013/09/10/1378838419000-AFP-522743333.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2793349,
                            "position": 2,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "2000",
                                    "oImageWidth": "2000",
                                    "sImageHeight": "400",
                                    "sImageWidth": "400",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Reviewed.com",
                                    "alternate": null,
                                    "title": "infiniti",
                                    "caption": "Compact crossovers are hot in Frankfurt this year, and Infiniti's new Q30 fits the trend.",
                                    "datephototaken": null,
                                    "cutline": "Compact crossovers are hot in Frankfurt this year, and Infiniti's new Q30 fits the trend.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "infiniti.jpg",
                                    "imgIndex": "1378832626000",
                                    "imgUniqueName": "1378832626000-infiniti.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378832626000-infiniti.jpg",
                                    "smallbasename": "/-mm-/c711c85d58e411988f13438d0dec93db9715f141/r=400x400/local/-/media/USATODAY/test/2013/09/10/1378832626000-infiniti.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378832626000-infiniti.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/fdf5f83ec343e3665b2b9d7792eb5f51fc112623/c=165-790-635-1260/local/-/media/USATODAY/test/2013/09/10/1378832626000-infiniti.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/06cd03ed235165b6b3303a39843e759b2a6933c2/c=180-820-770-1265/local/-/media/USATODAY/test/2013/09/10/1378832626000-infiniti.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/498f0deda895b19d46e55a82d85154936ce42f71/c=180-755-560-1265/local/-/media/USATODAY/test/2013/09/10/1378832626000-infiniti.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/88ceede07ffc906afbb0fabcb90e716db0abdd2a/c=1085-750-1885-1200/local/-/media/USATODAY/test/2013/09/10/1378832626000-infiniti.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/e1d248b96a128eede41de14713339964b4d3d450/c=200-775-485-1285/local/-/media/USATODAY/test/2013/09/10/1378832626000-infiniti.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/b6b176197d763b0ec3ae479e8199fa4b39532886/c=180-800-725-1265/local/-/media/USATODAY/test/2013/09/10/1378832626000-infiniti.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "text",
                            "value": "(Newser) – Huge numbers of American children have a liver disease that used to be seen mainly among adult alcoholics—and most of them don't know it, researchers warn."
                        },
                        {
                            "type": "text",
                            "value": "Around 10% of children are now believed to have fatty liver disease, which can lead to cirrhosis and liver failure in some cases, the Wall Street Journal reports. Around 40% of obese children have the condition, but its prevalence is rising even as obesity rates level off; the number of normal-weight children with fatty livers has also surged over the last 20 years, studies show."
                        },
                        {
                            "type": "text",
                            "value": "\"This is just really worrisome to have this number of children who have a disease this severe,\" says a pediatrics professor whose research has found that the prevalence of fructose in Western diets could be partly to blame."
                        },
                        {
                            "type": "text",
                            "value": "NEWSER: Latest Secession Attempt: Western Maryland"
                        },
                        {
                            "type": "text",
                            "value": "The disease has no symptoms and public health experts are debating introducing widespread screening for it."
                        },
                        {
                            "type": "text",
                            "value": "Little is known about how the disease progresses into adulthood and for now, treatments for it and associated illnesses are limited: Doctors recommend weight loss through diet and exercise and treating inflamed livers with Vitamin E. (In other health news, a recent study found that one fruit rules supreme when it comes to lowering your diabetes risk.)"
                        },
                        {
                            "type": "text",
                            "value": "    Newser is a USA TODAY content partner providing general news, commentary and coverage from around the Web. Its content is produced independently of USA TODAY."
                        }
                    ],
                    "id": 2792159,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "1 in 10 kids have a liver like an alcoholic's",
                        "shortHeadline": "1 in 10 kids have a liver like an alcoholic's",
                        "byline": "Rob Quinn, Newser Staff",
                        "editedHeadline": null,
                        "storyabstract": "(Newser) – Huge numbers of American children have a liver disease that used to be seen mainly among adult alcoholics—and most of them don't know it, researchers warn. Around 10% of children are now believed to have fatty liver disease, which can lead to cirrhosis and liver failure in some cases, the Wall Street Journal reports. Around 40% of obese children have the condition, but its prevalence is rising even as obesity rates level off; the number of normal-weight children with fatty livers has also surged over the last 20 years, studies show. \"This is just really worrisome to have this number of children who have a disease this severe,\" says a pediatrics professor whose research has found that the prevalence of fructose in Western diets could be partly to blame.",
                        "brief": "Huge numbers of American kids have a liver disease that used to be seen mainly in adult alcoholics.",
                        "storyhighlights": [
                            "Around 10%25 of children are now believed to have fatty liver disease",
                            "Disease that used to be seen mainly among adult alcoholics",
                            "Disease can lead to cirrhosis and liver failure"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T13:17:45.754-04:00",
                            "feeddateline": "2013-09-10T13:17:45.754-04:00",
                            "published": "2013-09-10T14:41:33Z",
                            "lastupdated": "2013-09-10T17:17:46Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "nation",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/nation/2013/09/10/1-in-10-kids-has-a-liver-like-an-alcoholics/2792159/",
                            "shorturl": "http://usat.ly/17NREQ6",
                            "mobileurl": "http://usat.ly/17NREQ6"
                        },
                        "firstAsset": 0,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "news/national",
                        "topic": ""
                    },
                    "assets": []
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2775285"
                        },
                        {
                            "type": "text",
                            "value": "Surely millions of football fans gathered around their televisions last night for the kickoff game of the NFL season between the Denver Broncos and the Baltimore Ravens.  One of those fans, late-night comedian Jimmy Fallon, said things got a bit awkward at his house when he ordered a pizza for his buddies and Tim Tebow delivered it. Another comedian stated that nothing says new NFL season like Ryan Seacrest hosting the main event."
                        },
                        {
                            "type": "text",
                            "value": "Take a look at more of our favorite jokes about the NFL kickoff game.  Then vote for your favorite in the quick poll to the right. Watching from your smartphone or tablet? Then visit opinion.usatoday.com to vote."
                        },
                        {
                            "type": "asset",
                            "value": "2775273"
                        },
                        {
                            "type": "asset",
                            "value": "2775245"
                        }
                    ],
                    "id": 2775253,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Punchlines: Are you ready for some football?",
                        "shortHeadline": "Punchlines: Are you ready for some football?",
                        "byline": ", USATODAY",
                        "editedHeadline": null,
                        "storyabstract": "Surely millions of football fans gathered around their televisions last night for the kickoff game of the NFL season between the Denver Broncos and the Baltimore Ravens.  One of those fans, late-night comedian Jimmy Fallon, said things got a bit awkward at his house when he ordered a pizza for his buddies and Tim Tebow delivered it. Another comedian stated that nothing says new NFL season like Ryan Seacrest hosting the main event. Take a look at more of our favorite jokes about the NFL kickoff game.  Then vote for your favorite in the quick poll to the right. Watching from your smartphone or tablet? Then visit opinion.usatoday.com to vote.",
                        "brief": "Comedians talk NFL kickoff, Ryan Seacrest and Tim Tebow.",
                        "storyhighlights": null,
                        "dates": {
                            "embargodate": "2013-09-06T10:01:29.924-04:00",
                            "feeddateline": "2013-09-06T10:01:29.924-04:00",
                            "published": "2013-09-06T14:01:30Z",
                            "lastupdated": "2013-09-06T14:01:30Z"
                        },
                        "ssts": {
                            "section": "opinion",
                            "subsection": "",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/opinion/2013/09/06/nfl-tim-tebow-broncos-ravens-kimmel-leno-fallon/2775253/",
                            "shorturl": "http://usat.ly/17DXFPf",
                            "mobileurl": "http://usat.ly/17DXFPf"
                        },
                        "firstAsset": 2775285,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "news/opinion",
                        "topic": "jimmy-kimmel,jimmy-fallon,jay-leno"
                    },
                    "assets": [
                        {
                            "id": 2775285,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "1735",
                                    "oImageWidth": "2386",
                                    "sImageHeight": "363",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "John Shearer, Invision/AP",
                                    "alternate": null,
                                    "title": "Kimmel on NFL opener",
                                    "caption": "Jimmy Kimmel",
                                    "datephototaken": "9-23-2012",
                                    "cutline": "Jimmy Kimmel",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AP_Kimmel_Pot_Commencement.jpg",
                                    "imgIndex": "1378475892000",
                                    "imgUniqueName": "1378475892000-AP-Kimmel-Pot-Commencement.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/06/1378475892000-AP-Kimmel-Pot-Commencement.jpg",
                                    "smallbasename": "/-mm-/6613d7bb221e5019ccb18ca3b00fc398c4f4a29f/r=500x363/local/-/media/USATODAY/test/2013/09/06/1378475892000-AP-Kimmel-Pot-Commencement.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/06/1378475892000-AP-Kimmel-Pot-Commencement.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/6ee070f314aec5f642f3d56d0f85b29810f47b29/c=329-0-2061-1735/local/-/media/USATODAY/test/2013/09/06/1378475892000-AP-Kimmel-Pot-Commencement.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/ff58fd5c272d97fe85a8de2dd09cb5905d612a6d/c=42-0-2347-1735/local/-/media/USATODAY/test/2013/09/06/1378475892000-AP-Kimmel-Pot-Commencement.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/324620c776dc2b0cd3ad3d3e2ef2c8ffb436c8f4/c=501-0-1799-1735/local/-/media/USATODAY/test/2013/09/06/1378475892000-AP-Kimmel-Pot-Commencement.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/94cdd10201e33982834a6b17e050c1bee7903669/c=0-66-2386-1414/local/-/media/USATODAY/test/2013/09/06/1378475892000-AP-Kimmel-Pot-Commencement.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/5aa657e2ab143e86b009a45b1b4938c9d4bdbe71/c=663-0-1632-1735/local/-/media/USATODAY/test/2013/09/06/1378475892000-AP-Kimmel-Pot-Commencement.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/b5bc656d68156563f4f0a187f285aeda6eb3816a/c=181-0-2209-1735/local/-/media/USATODAY/test/2013/09/06/1378475892000-AP-Kimmel-Pot-Commencement.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2775273,
                            "position": 2,
                            "type": "video",
                            "status": "published",
                            "url": "http://www.usatoday.com/videos/opinion/2013/09/06/2775273/",
                            "mobileUrl": "http://usat.ly/1fEOOxO",
                            "ssts": {
                                "section": "opinion",
                                "subsection": "",
                                "topic": "",
                                "subtopic": "",
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "brightcoveid": "2653716590001",
                                    "origin": "1",
                                    "viraldistribution": "true",
                                    "autoarchive": "true",
                                    "adsenabled": "True",
                                    "propertyid": "1",
                                    "brightcoveaccount": "29906170001",
                                    "datecreated": "9/6/2013 9:54:35 AM",
                                    "user": "erivers",
                                    "status": "complete",
                                    "name": "Punchlines: Are you ready for some football?",
                                    "shortdescription": "Comedians talk NFL kickoff, Ryan Seacrest and Tim Tebow.  Take a look at our favorite jokes, then vote for yours at opinion.usatoday.com.",
                                    "tags": "Football,jimmy kimmel,NFL Kickoff,TIM TEBOW,Editorial page,Baltimore Ravens,Ryan Seacrest,Jimmy Fallon,Jay Leno,Denver Broncos,Punchlines",
                                    "thumbnail": "http://videos.usatoday.net/Brightcove2/29906170001/2013/09/29906170001_2653767470001_th-5229dbc1e4b010434e4a96b7-1592194028001.jpg?pubId=29906170001",
                                    "videostill": "http://videos.usatoday.net/Brightcove2/29906170001/2013/09/29906170001_2653767467001_vs-5229dbc1e4b010434e4a96b7-1592194028001.jpg?pubId=29906170001",
                                    "startdate": null,
                                    "enddate": null,
                                    "length": "04:16",
                                    "credit": null,
                                    "excludemobile": "False",
                                    "excluderightnow": "False",
                                    "majorchange": "False",
                                    "content-protection-state": "free",
                                    "lastaction": "Published",
                                    "interactive": "false",
                                    "topic": "opinion",
                                    "aws": "news/opinion"
                                },
                                "crops": null,
                                "document": null
                            }
                        },
                        {
                            "id": 2775245,
                            "position": 3,
                            "type": "Interactive:Poll",
                            "status": "Published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": "opinion",
                                "subsection": "readers",
                                "topic": "",
                                "subtopic": "",
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "active": "1",
                                    "answers": "3",
                                    "name": "Punchlines NFL kickoff",
                                    "shortdescription": "Who delivered your favorite punchline? ",
                                    "source": null,
                                    "origin": "usatoday",
                                    "longdescription": "Who delivered your favorite punchline? ",
                                    "editor": "erivers",
                                    "datecreated": "9/6/2013 9:38:33 AM",
                                    "datepublished": "9/6/2013 9:38:32 AM",
                                    "credit": null,
                                    "permalink": "http://www.usatoday.com/quick-question/2775245/punchlines-nfl-kickoff",
                                    "interactive": "true",
                                    "aws": "news/opinion"
                                },
                                "crops": null,
                                "document": "{\"question\":{\"name\":{\"@value\":\"Punchlines NFL kickoff\"},\"label\":{\"@value\":\"Punchlines NFL kickoff\"},\"headline\":{\"@value\":\"Who delivered your favorite punchline? \"}},\"answers\":{\"answer\":[{\"@id\":\"0.1\",\"@order\":\"1\",\"@value\":\"Jimmy Kimmel\"},{\"@id\":\"0.2\",\"@order\":\"2\",\"@value\":\"Jay Leno\"},{\"@id\":\"0.3\",\"@order\":\"3\",\"@value\":\"Jimmy Fallon\"}]}}"
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "text",
                            "value": "Apple will launch two new iPhones on September 20: a low-cost 5C starting at $99 and a higher-end 5S that features a Touch ID fingerprint sensor."
                        },
                        {
                            "type": "asset",
                            "value": "2793597"
                        },
                        {
                            "type": "text",
                            "value": "The devices were revealed during a special event at the company's headquarters in Cupertino, Calif."
                        },
                        {
                            "type": "text",
                            "value": "The 5C will be available in five colors -- white, pink, yellow, blue and green -- and boasts many of the same features as the iPhone 5."
                        },
                        {
                            "type": "text",
                            "value": "The 5S will receive upgrades to the camera, a faster A7 processor with M7 coprocessor, and the option to unlock your phone or make iTunes purchases with a fingerprint identity sensor."
                        },
                        {
                            "type": "text",
                            "value": "For more details on the event, check out our live recap below:"
                        },
                        {
                            "type": "text",
                            "value": "11:25: Costello wraps with \"Tripwire,\" a song from his new album with The Roots (\"See, I've got product announcements, too,\" he jokes to laughter). It's a melancholy tune, which he apologizes for in advance. But it's also an impressively haunting one that stays with you. Apple hopes the same is true for the news about its new iPhones 5C and 5S. Thanks for staying with us throughout the live Apple event, and stay with @usatodaytech for more news from our team."
                        },
                        {
                            "type": "text",
                            "value": "11:15: \"Lots of fancy stuff here, wow, and it's just me and my old Fender here. Can I say Fender,\" he jokes. Then he says he was a \"computer operator as a kid, and looking around at all this magic I wonder if I went into the wrong field.\" When he was little, he says his father \"lived on the radio\" as a dance band singer. \"I thought what can I sing for you today ...well you got this Apple radio thing going on so ...\" Kicks into \"Radio, Radio.\""
                        },
                        {
                            "type": "text",
                            "value": "11:13: Costello ripping through \"(What's So Funny 'bout) Peace, Love and Understanding.\" His voice sounds like it did 30 years ago."
                        },
                        {
                            "type": "text",
                            "value": "11:10: Cook is back on stage, showcasing a few ads that will hit TVs soon. First, for 5C, is awash with color, showing how the phone integrates into a world of color. Most languages the actors speak are NOT English, again showing how Apple intends to push more aggressively into global markets. \"I'm so incredibly proud of the work of our teams,\" says Cook. \"But I'd like to return to music for a moment. We say it's deeply embedded in our DNA. We do really love music.\" Certainly, Steve Jobs did. Cook says it's time to introduce a special guest. \"One of the best singer songwriters of our time\" ...it's Elvis Costello."
                        },
                        {
                            "type": "text",
                            "value": "11:07: Pricing of new iPhone5S: 16GB is $199, $299 for 32 GB, and $399 for 64GB. And ...leather cases, in five colors for $39 each. \"Now you've seen our new phone lines, 5C and the 5S, from $99 for one and $199 for the other,\" says Schiller. \"Starting Friday Sept. 13 you can order 5C online, and a week later, Sept. 20, you'll be able to purchase the phones in stores. In the US\" and a number of other countries. China is for the first time in the list of countries getting new phones when US customers do, reflecting the huge importance of this market for Apple."
                        },
                        {
                            "type": "text",
                            "value": "11:01 AM: Schiller wraps up his presentation on the new iPhone5S, leading into a video, again with Jony Ive doing the voiceover (but he's not really easily in sight here). The video focuses on TouchID, which can be used to unlock the phone but also make purchases."
                        },
                        {
                            "type": "text",
                            "value": "10:58: After Schiller shows off some untouched photos taken with the new iPhone, from squirrels at Yosemite to a \"young homo sapien at rest,\" Schiller moves on to a hot topic today: security. Touch ID is here, using your fingertip to sense the phone's owner. It's scans through \"upper layers of epidermis to lower, live layers.\" Sensor sits in home button. Elegant, simple."
                        },
                        {
                            "type": "text",
                            "value": "10:54: Camera stuff now. Larger f2.2 aperture, 15% larger sensor area, and bigger pixels, which are now 1.5 microns in size. \"That means more light, dynamic range and less noise in the pictures.\" The new software in the new phone take advantage of this upgraded tech, says Schiller. Camera now actually takes multiple photos automatically when you hit \"snap\" and selects the best one for you. New flash too; it senses the ambient light around you, whether florescent or sunset, with two LEDs, one bright and one warmer, with \"1,000 color variations in between ...it's the first time it's been done not just on a phone but on a camera of any kind.\" Best of all: auto image stabilization, getting rid of movement during those action shots. That's a real plus for those of us who use their iPhone's as a camera almost exclusively. Camera now also shots \"bursts\" of many shots, allowing you to pick the best one. And finally, slow-mo - shows a guy diving into a pool, and halfway there he slows midair."
                        },
                        {
                            "type": "text",
                            "value": "10:46: Schiller talks about new iPhone's improved ability to sense movement. Nike highlighted (Nikefuel). \"A lot more performance, graphics and motion data ...but what about battery life? 10 hours 3G talk time, 8 hours 3G browsing, 40 hours of music and 250 hours of standby, he says."
                        },
                        {
                            "type": "text",
                            "value": "10:44: Gamers behind \"Infinity Blade III\" take the stage showcasing an epic dragon-filled battle on an iPhone5S, shooting flames from his mouth while an knight slices and dices with his gleaming sword. Even for non-gamers, it's an impressive action-filled rendering for a phone platform."
                        },
                        {
                            "type": "text",
                            "value": "10:39: Schiller now talking tech with newest top-line iPhone5S: it's A7 processor features: 64-bit desktop-class architecture, 64-bit kernel, libraries and drivers, re-engineered built-in apps, Xcode support, runs 32- and 64-bit apps. \"It's up to two times faster...CPU performance is up 40 times from first iPhone until 5S, and half of that comes today with new phone.\""
                        },
                        {
                            "type": "text",
                            "value": "10:36: Schiller is back as lights go up. \"The second is the iPhone5S, the most forward-thinking phone that perhaps anyone has ever made. It's the most stunning phone design of anything in the industry.\" Video back up: a gold liquid flowing through the air ... mates to a white and gold phone, new to the white and black line-up. Looks a lot like iPhone5."
                        },
                        {
                            "type": "text",
                            "value": "10:31: Pricing: $99 for 16 gigs, and $199 for 32 gigs, with contract. \"They're PVC-free ...and yes, Android free.\" Big laughs from crowd. Now ...video on screen with Jony Ive talking about iPhone5C: \"It's more capable and certainly more colorful...the iPhone5C is hardware and software working harmoniously together.\" He adds that it's \"beautifully and unapologetically plastic,\" such a contrast from when Jobs introduced iPhone4 which he likened to a Leica camera, which is known for its solid steel feel. Ive:"
                        },
                        {
                            "type": "text",
                            "value": "10:27: Schiller on iPhone5C: The front is one glass multi-touch surface. \"No seams or joints.\" Wallpaper is color-matched, \"an experience of color.\" Custom cases are made of soft feel silicone rubber; cases have color but also circular cutouts that let color of iPhone5C to show through. \"You'll be blown away by the quality of it.\" 4-inch Retina display; Apple designed A6 chip inside. Battery is slightly larger than that one in iPhone5. 8 MP camera, with 3x video zoom."
                        },
                        {
                            "type": "text",
                            "value": "10:24: iPhone talk next up. Cook mentions iPhone 5 helped fueled growth. \"In the past, we have announced new phones with lower prices. This year we're not going to do that. We're going to replace iPhone 5 with not one, but two new designs. This allows us to serve even more customers.\" Phil Schiller strides on stage. He announces new iPhone5C."
                        },
                        {
                            "type": "text",
                            "value": "10:20: Cook back on stage. He mentions the \"incredible collaboration\" between Jony Ive in design and Craig's engineers. Next up: dissection of Apple's iWork system for mobile, anchored to Keynote, Pages and Numbers. Pushing the notion that iOS7 aren't \"just for consuming content, they're incredible for creating content.\""
                        },
                        {
                            "type": "text",
                            "value": "10:15: iTunes Radio is a feature of iOS7, says Federighi. Daft Punk's \"Random Access Memories\" fills the hall. Looks a lot like Pandora in some ways. \"If you're like me you'll dial up the great Canadian rock band Rush and get a full dose of awesome.\" Big laughs."
                        },
                        {
                            "type": "text",
                            "value": "10:13: New voice for Siri, and an added male voice. Siri also can draw on info from Wikipedia and the web. Also, when calls are coming in, there are new options for ring tones: some strange dance-type tunes that seem appropriate for a W Hotel lobby. In his demo, Federighi has lots of jokes about his hair: one reminder notes he needs to look for shampoo and conditioner. His hair indeed is absurdly perfect."
                        },
                        {
                            "type": "text",
                            "value": "10:10: Apple's iOS7 honcho Craig Federighi on stage now, talking about iOS7, which downloads soon. He's going over the highlights, \"which starts with the home screen.\" Focuses on the \"depth\" of the look, a \"parallax effect\" that responds to the movement of your hand."
                        },
                        {
                            "type": "text",
                            "value": "10:09: Cook talks about the \"architectural marvel\" that is new Apple story in Pal Alto, which looks like a floating glass temple. Lucky Stanford University students."
                        },
                        {
                            "type": "text",
                            "value": "10:05: Video on the big screen showing off the hip and large crowds who have thronged to recent iTunes Festival events in London; gives time for journalists to update blog posts and tweet."
                        },
                        {
                            "type": "text",
                            "value": "10 AM: Tim Cook strides on stage to applause. Auditorium here is much smaller than Apple's usual haunts in San Francisco. He welcomes those joining from Beijing and Tokyo. First up: talks about iTunes Festival news, now 7 years running. 30 nights of live performances in London, including Elton John, Robin Thicke and Lady Gaga."
                        },
                        {
                            "type": "text",
                            "value": "9:58: Among those spotted in the crowd of journalists here at Apple: Former vice president Al Gore and Yahoo! boss Marissa Mayer."
                        },
                        {
                            "type": "text",
                            "value": "9:57 PT: In position at Apple HQ - the news happens now. Stay with us."
                        },
                        {
                            "type": "text",
                            "value": "9:45 a.m. PT: Apple's event kicks off in 15 minutes. USA TODAY's Marco della Cava is at Apple headquarters in Cupertino, and will file updates from the event starting at 10 a.m. PT (1 p.m .ET)."
                        },
                        {
                            "type": "text",
                            "value": "Our original post"
                        },
                        {
                            "type": "text",
                            "value": "Apple will host an event at its Cupertino, Calif., headquarters on Tuesday, where it is widely expected the company will reveal its latest iPhone."
                        },
                        {
                            "type": "text",
                            "value": "Industry experts suggest Apple will introduce a fingerprint sensor to beef up security on the device, while several published reports claim the company will show off two iPhone models: a high-end 5S and a lower-cost 5C for China and other developing markets."
                        },
                        {
                            "type": "text",
                            "value": "Apple could also inject a bit of color into its popular smartphone. Reports have suggested Apple could offer the iPhone in a champagne gold color as well as graphite."
                        },
                        {
                            "type": "text",
                            "value": "Shares of Apple are trading above $508 in early-morning trading."
                        },
                        {
                            "type": "text",
                            "value": "A new iPhone arrives as competition in the smartphone market continues to escalate. Last month, Google introduced its first smartphone from Motorola, the Moto X. Meanwhile, at an event last week in Berlin, Samsung revealed its Galaxy Gear smartwatch, which lets users answer calls, check messages and set up alerts."
                        },
                        {
                            "type": "text",
                            "value": "USA TODAY will have live coverage of Apple's iPhone event starting at 1 p.m. ET. Be sure to check back here for the latest news."
                        },
                        {
                            "type": "text",
                            "value": "Follow Brett Molina on Twitter: @bam923."
                        }
                    ],
                    "id": 2791683,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Recap: Apple unveils iPhone 5S, 5C smartphones",
                        "shortHeadline": "Recap: Apple unveils iPhone 5S, 5C smartphones",
                        "byline": "Marco della Cava, USA TODAY",
                        "editedHeadline": "New iPhones come in a rainbow of colors",
                        "storyabstract": "Apple will launch two new iPhones on September 20: a low-cost 5C starting at $99 and a higher-end 5S that features a Touch ID fingerprint sensor. The devices were revealed during a special event at the company's headquarters in Cupertino, Calif. The 5C will be available in five colors -- white, pink, yellow, blue and green -- and boasts many of the same features as the iPhone 5. The 5S will receive upgrades to the camera, a faster A7 processor with M7 coprocessor, and the option to unlock your phone or make iTunes purchases with a fingerprint identity sensor. For more details on the event, check out our live recap below: 11:25: Costello wraps with \"Tripwire,\" a song from his new album with The Roots (\"See, I've got product announcements, too,\" he jokes to laughter). It's a melancholy tune, which he apologizes for in advance. But it's also an impressively haunting one that stays with you. Apple hopes the same is true for the news about its new iPhones 5C and 5S. Thanks for staying with us throughout the live Apple event, and stay with @usatodaytech for more news from our team.",
                        "brief": "Company unveils two versions of its popular smartphone.",
                        "storyhighlights": [
                            "Devices unveiled at special event at company%27s headquarters in Cupertino%2C Calif.",
                            "5C will be available in five colors%3A white%2C pink%2C yellow%2C blue and green",
                            "5S will receive camera upgrade%2C faster A7 processor with M7 coprocessor and fingerprint ID sensor"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T15:57:54.476-04:00",
                            "feeddateline": "2013-09-10T15:57:54.476-04:00",
                            "published": "2013-09-10T12:47:36Z",
                            "lastupdated": "2013-09-10T19:57:55Z"
                        },
                        "ssts": {
                            "section": "tech",
                            "subsection": "personal",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/tech/personal/2013/09/10/apple-iphone-live-coverage/2791683/",
                            "shorturl": "http://usat.ly/1fUEyS9",
                            "mobileurl": "http://usat.ly/1fUEyS9"
                        },
                        "firstAsset": 2793597,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "tech/products",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2793597,
                            "position": 2,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "3072",
                                    "oImageWidth": "4608",
                                    "sImageHeight": "333",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Justin Sullivan, Getty Images",
                                    "alternate": null,
                                    "title": "schiller 5c",
                                    "caption": "Apple Senior Vice President of Worldwide Marketing at Phil Schiller speaks about the new iPhone 5C during an Apple product announcement at the Apple campus.",
                                    "datephototaken": "9-10-2013",
                                    "cutline": "Apple Senior Vice President of Worldwide Marketing at Phil Schiller speaks about the new iPhone 5C during an Apple product announcement at the Apple campus.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "GTY 180222526.jpg",
                                    "imgIndex": "1378834851000",
                                    "imgUniqueName": "1378834851000-GTY-180222526.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378834851000-GTY-180222526.jpg",
                                    "smallbasename": "/-mm-/4044b1e7645488621f157de466cf1a990870caa2/r=500x333/local/-/media/USATODAY/test/2013/09/10/1378834851000-GTY-180222526.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378834851000-GTY-180222526.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/6f606fcf36c9a7ee116a61caad8937954862f393/c=774-0-3843-3072/local/-/media/USATODAY/test/2013/09/10/1378834851000-GTY-180222526.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/7f03d86213bffe6f10c05185f7624335986698af/c=267-0-4349-3072/local/-/media/USATODAY/test/2013/09/10/1378834851000-GTY-180222526.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/8edea6fa2ff038eb4f6e73d9b271d86c3371e8e5/c=1437-0-3741-3072/local/-/media/USATODAY/test/2013/09/10/1378834851000-GTY-180222526.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/05b65c26f8256c0433c150a7743545474b4aedad/c=0-470-4608-3072/local/-/media/USATODAY/test/2013/09/10/1378834851000-GTY-180222526.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/47cddbe5824777419aef45eb6a3dc1bdeeba0248/c=1446-0-3161-3072/local/-/media/USATODAY/test/2013/09/10/1378834851000-GTY-180222526.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/74abf4a03139a718bc6a653744d6e4059c90cd5a/c=737-0-4331-3072/local/-/media/USATODAY/test/2013/09/10/1378834851000-GTY-180222526.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2792597,
                            "position": 3,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "3214",
                                    "oImageWidth": "4821",
                                    "sImageHeight": "333",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Justin Sullivan, Getty Images",
                                    "alternate": null,
                                    "title": "apple event",
                                    "caption": "People arrive for an Apple product announcement at the Apple campus in Cupertino, Calif.",
                                    "datephototaken": "9-10-2013",
                                    "cutline": "People arrive for an Apple product announcement at the Apple campus in Cupertino, Calif.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "GTY 180216702.jpg",
                                    "imgIndex": "1378827356000",
                                    "imgUniqueName": "1378827356000-GTY-180216702.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378827356000-GTY-180216702.jpg",
                                    "smallbasename": "/-mm-/4044b1e7645488621f157de466cf1a990870caa2/r=500x333/local/-/media/USATODAY/test/2013/09/10/1378827356000-GTY-180216702.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378827356000-GTY-180216702.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/a0e7409790377743740fee7ad3cbec8f26c09000/c=511-0-3721-3214/local/-/media/USATODAY/test/2013/09/10/1378827356000-GTY-180216702.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/f795ada59279619ba0c12930c51a554af0e984fa/c=0-0-4271-3214/local/-/media/USATODAY/test/2013/09/10/1378827356000-GTY-180216702.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/e70ff5f541b752bcc479799ae06f2bf02ff3f67b/c=1022-0-3432-3214/local/-/media/USATODAY/test/2013/09/10/1378827356000-GTY-180216702.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/bff5e0e50eab4311daecc41b63ab1d5766a4e1a4/c=0-250-4821-2972/local/-/media/USATODAY/test/2013/09/10/1378827356000-GTY-180216702.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/dd80704547e8972425755a1c3f2ab7cbeb2a6b6c/c=1513-0-3307-3214/local/-/media/USATODAY/test/2013/09/10/1378827356000-GTY-180216702.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/c264c99677a25dc5ae5a7c5089028a4f1142bf77/c=192-0-3953-3214/local/-/media/USATODAY/test/2013/09/10/1378827356000-GTY-180216702.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2788429,
                            "position": 4,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "1080",
                                    "oImageWidth": "1920",
                                    "sImageHeight": "281",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Getty",
                                    "alternate": null,
                                    "title": "Apple logo is seen hanging inside the Apple store",
                                    "caption": "Apple logo is seen hanging inside the Apple store on West 66th Street on October 5, 2011 in New York City",
                                    "datephototaken": null,
                                    "cutline": "Apple logo is seen hanging inside the Apple store on West 66th Street on October 5, 2011 in New York City",
                                    "orientation": "horizontal",
                                    "OrigImageName": "Apple.jpg",
                                    "imgIndex": "1378752247000",
                                    "imgUniqueName": "1378752247000-Apple.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/USATODAY/2013/09/09/1378752247000-Apple.jpg",
                                    "smallbasename": "/-mm-/33d97f8a03d5ea06baca0f7a30eca34c8bd87643/r=500x281/local/-/media/USATODAY/USATODAY/2013/09/09/1378752247000-Apple.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/USATODAY/2013/09/09/1378752247000-Apple.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/6e51a7af3fdeb1ea78d4e76d969abaa0edf04049/c=422-0-1501-1080/local/-/media/USATODAY/USATODAY/2013/09/09/1378752247000-Apple.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/b59b0a89b3f745fd4480e3fb7908a40b28a0a61a/c=241-0-1678-1080/local/-/media/USATODAY/USATODAY/2013/09/09/1378752247000-Apple.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/bf44701f1956e42da51b0c750ac9292f1162a775/c=556-0-1367-1080/local/-/media/USATODAY/USATODAY/2013/09/09/1378752247000-Apple.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/c9502e949ca9c5647cfa011817e4573291c0eb90/c=7-0-1916-1080/local/-/media/USATODAY/USATODAY/2013/09/09/1378752247000-Apple.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/f69af72030487d7e93411ed3bf857326bfb5af8a/c=660-0-1263-1080/local/-/media/USATODAY/USATODAY/2013/09/09/1378752247000-Apple.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/2f023327a975d8b0935e29c80a46626dc906323a/c=330-0-1593-1080/local/-/media/USATODAY/USATODAY/2013/09/09/1378752247000-Apple.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2792321"
                        },
                        {
                            "type": "text",
                            "value": "WASHINGTON — Russia's proposal to assume control of Syria's chemical weapons is a positive step, Obama administration officials told a House committee Tuesday, but it only happened because of the threat of U.S. force."
                        },
                        {
                            "type": "text",
                            "value": "Secretary of State John Kerry told the House Armed Services Committee that the United States must respond to the Bashar Assad regime's Aug. 21 use of sarin nerve gas that killed at least 1,400 people, including more than 400 children, to show the world that the use of chemical weapons is not acceptable."
                        },
                        {
                            "type": "text",
                            "value": "Russia's proposal gives all sides a way to avoid military action, Kerry said. \"That is the ideal way to handle this,\" he said."
                        },
                        {
                            "type": "text",
                            "value": "But Kerry said the administration has made it clear to the Russians that \"this can't become a process of delay and avoidance.\" The United States, he added, is willing to wait, \"but we are not waiting for long. The [United Nations] Security Council can't be allowed to become a debating society.\""
                        },
                        {
                            "type": "text",
                            "value": "Kerry, Defense Secretary Chuck Hagel and Gen. Martin Dempsey, the chairman of the Joint Chiefs of Staff, faced a skeptical committee concerned about the effect of deep cuts in military spending, known as sequestration, and the side effects of any military strike against the Assad regime. Polls show a majority of Americans oppose President Obama's request to seek congressional authorization to attack Syria with cruise missiles."
                        },
                        {
                            "type": "text",
                            "value": "Hagel noted that he, Kerry and Dempsey were all combat veterans and had \"seen its ugly realities up close. ... We are not unaware of the costs and ravages of war. But we also understand that America must protect its people and its national interests.\""
                        },
                        {
                            "type": "text",
                            "value": "Walid al-Moualem, Syria's foreign minister, said the Assad government decided Monday evening to accept the Russia plan \"to stave off American aggression.\""
                        },
                        {
                            "type": "text",
                            "value": "Rep. Buck McKeon, a California Republican and chairman of the Armed Services Committee, questioned whether the automatic cuts known as sequestration would affect the military's ability to strike Syria. The Navy's cost of keeping four destroyers in the region costs about $30 million a week, he said."
                        },
                        {
                            "type": "text",
                            "value": "\"I'm not concerned about this operation,\" Dempsey said, but future ones might be affected. \"My assumption is if something is in our national interest we can find the money to pay for it,\" Dempsey said."
                        },
                        {
                            "type": "text",
                            "value": "Dempsey said the planned strike would be significant and aimed at degrading Assad's ability to use chemical weapons again and to threaten his neighbors. The attack could come in two waves."
                        },
                        {
                            "type": "text",
                            "value": "Intelligence shows that Syria possesses 1,000 metric tons of chemical weapons, Kerry said. Most of it is unmixed and stored in tanks. The weapons do not work until the component chemicals are mixed together. But Syria also has sarin-filled munitions and other weapons, Kerry said. The majority is in areas controlled by Assad's forces."
                        },
                        {
                            "type": "text",
                            "value": "The U.S. military must remain \"on the table\" to compel Assad not to use chemical weapons again, Kerry said."
                        },
                        {
                            "type": "text",
                            "value": "In one of the first statements about why Assad has used chemical weapons, Dempsey said he used them as a tactical weapon because his forces have been worn down after two years of fighting."
                        },
                        {
                            "type": "text",
                            "value": "Assad appears to have have used chemical weapons on Aug. 21 to clear neighborhoods his army had been unable to secure them with conventional weapons and tactics, Dempsey said."
                        },
                        {
                            "type": "text",
                            "value": "Rep. Adam Smith, the Washington Democrat and ranking member of the committee, pressed Kerry on how leaving Assad in power would hold him accountable."
                        },
                        {
                            "type": "text",
                            "value": "\"We're taking a stick and hitting a hornet's nest with no intention of killing the hornets,\" Smith said."
                        },
                        {
                            "type": "text",
                            "value": "Kerry responded that the administration's approach was not \"piecemeal.\""
                        },
                        {
                            "type": "text",
                            "value": "Rep. Walter Jones, R-N.C., pressed for answers on the risk of retaliation after an attack."
                        },
                        {
                            "type": "text",
                            "value": "Hagel said there are risks without taking action, as well. No response from the international community to Assad's use of chemical weapons means he will do it again, Hagel said."
                        },
                        {
                            "type": "text",
                            "value": "Dempsey said the risk was low that Iran, which is backing Syria, would launch a counterattack. But he added, \"I can't drive it to zero.\""
                        },
                        {
                            "type": "text",
                            "value": "The three witnesses repeatedly emphasized the administration was not seeking a long struggle with Syria, a claim that continued to draw skeptical questioning."
                        },
                        {
                            "type": "text",
                            "value": "In a heated exchange between Kerry and Rep. Jeff Miller, R.-Fla., Miller challenged Kerry on whether the administration had the votes needed to support a military strike."
                        },
                        {
                            "type": "text",
                            "value": "\"Do you want to play politics or do you want to get a policy in place?\" Kerry snapped."
                        },
                        {
                            "type": "text",
                            "value": "Miller pressed Kerry to explain his remark that an attack on Syria would be limited."
                        },
                        {
                            "type": "text",
                            "value": "\"It's not Iraq,\" Kerry said. \"It's not Iran. It's not a year's war.\""
                        },
                        {
                            "type": "asset",
                            "value": "2759693"
                        },
                        {
                            "type": "text",
                            "value": "Follow @tvandenbrook on Twitter."
                        }
                    ],
                    "id": 2792249,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Kerry: Military threat against Syria led to diplomacy",
                        "shortHeadline": "Kerry: U.S. threat spurred Russia offer",
                        "byline": "Tom Vanden Brook, USA TODAY",
                        "editedHeadline": "Kerry: Military threat led to Syria diplomacy",
                        "storyabstract": "WASHINGTON — Russia's proposal to assume control of Syria's chemical weapons is a positive step, Obama administration officials told a House committee Tuesday, but it only happened because of the threat of U.S. force. Secretary of State John Kerry told the House Armed Services Committee that the United States must respond to the Bashar Assad regime's Aug. 21 use of sarin nerve gas that killed at least 1,400 people, including more than 400 children, to show the world that the use of chemical weapons is not acceptable. Russia's proposal gives all sides a way to avoid military action, Kerry said. \"That is the ideal way to handle this,\" he said.",
                        "brief": "U.S. military threat against Syria made Russian proposal possible, Kerry says",
                        "storyhighlights": [
                            "Syrians agree that U.S. threat drove them to consider chemical weapons ban",
                            "U.S. military threat made Russian proposal possible%2C Kerry says",
                            "The Pentagon can pay for the operation%2C Joint Chiefs chairman says"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T15:20:03.309-04:00",
                            "feeddateline": "2013-09-10T15:20:03.309-04:00",
                            "published": "2013-09-10T15:16:21Z",
                            "lastupdated": "2013-09-10T19:20:04Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "politics",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/politics/2013/09/10/military-threat-spurred-syria-diplomacy/2792249/",
                            "shorturl": "http://usat.ly/1fViczQ",
                            "mobileurl": "http://usat.ly/1fViczQ"
                        },
                        "firstAsset": 2793171,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "news/politics",
                        "topic": "syria-conflict"
                    },
                    "assets": [
                        {
                            "id": 2793171,
                            "position": 1,
                            "type": "video",
                            "status": "published",
                            "url": "http://www.usatoday.com/videos/news/2013/09/10/2793171/",
                            "mobileUrl": "http://usat.ly/17O8BKm",
                            "ssts": {
                                "section": "news",
                                "subsection": "",
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "brightcoveid": "2662762895001",
                                    "name": "Kerry: Failure to act is Assad's license to gas Syrians",
                                    "shortdescription": "Secretary of State John Kerry speaks to the House Arms Services Committee in a effort to gain support for President Obama's plans against Syria.",
                                    "tags": "arms services committee,Chemical Weapons,Secretary of State,vpc,John Kerry,Obama,gas,politics,Government,assad,National News,syria,US House of Representatives",
                                    "source": "VPC",
                                    "origin": "VPC",
                                    "autoarchive": "true",
                                    "adsenabled": "true",
                                    "startdate": "1/1/0001 12:00:00 AM",
                                    "enddate": "1/1/0001 12:00:00 AM",
                                    "gannetttracking": "VPC_KERRY ON SYRIA HOUSE ARMS CMTE-W091013US House of Representatives",
                                    "longdescription": null,
                                    "viraldistribution": "true",
                                    "user": "VTM",
                                    "datecreated": "9/10/2013 12:51:29 PM",
                                    "credit": "VPC",
                                    "propertyid": "1",
                                    "brightcoveaccount": "VPC_KERRY ON SYRIA HOUSE ARMS CMTE-W091013US House of Representatives",
                                    "thumbnail": "http://bc_gvpc.edgesuite.net/img/963482463001/201309/1918/963482463001_2662739841001_th-522f4487e4b0ae5c81b61b41-767904722001.jpg?pubId=963482463001",
                                    "videostill": "http://bc_gvpc.edgesuite.net/img/963482463001/201309/918/963482463001_2662739840001_vs-522f4487e4b0ae5c81b61b41-767904722001.jpg?pubId=963482463001",
                                    "status": "complete",
                                    "length": "02:18",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": null,
                                "document": null
                            }
                        },
                        {
                            "id": 2792321,
                            "position": 2,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "2054",
                                    "oImageWidth": "3000",
                                    "sImageHeight": "342",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Mandel Ngan, AFP/Getty Images",
                                    "alternate": null,
                                    "title": "House Armed Services hearing",
                                    "caption": "Secretary of State John Kerry, left, and Defense Secretary Chuck Hagel appear Sept. 10 before the House Armed Services Committee.",
                                    "datephototaken": "9-10-2013",
                                    "cutline": "Secretary of State John Kerry, left, and Defense Secretary Chuck Hagel appear Sept. 10 before the House Armed Services Committee.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AFP 522750344.jpg",
                                    "imgIndex": "1378825937000",
                                    "imgUniqueName": "1378825937000-AFP-522750344.jpg",
                                    "isImageVisitedByUser": "False",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "smallbasename": "/-mm-/c5e135f39b641a320291b60d64758ac5b28be685/r=500x342/local/-/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "keywords": "syria conflict",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/9de121be3348264339da0845b990284390b3e1d0/c=474-0-2526-2054/local/-/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/42b968d84de92132a333feb865710444dc53c17b/c=138-0-2868-2054/local/-/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/39f43bf32cf7ebc31c9aa1ddb6f009593b9b846e/c=732-0-2274-2054/local/-/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/8675828afc5d1296823dca6b13d355a586649962/c=0-174-3000-1867/local/-/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/a4fd80630dfa6d2dd496d16404a936f9c98f012f/c=924-0-2076-2054/local/-/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/5bc5a9cbe6a88ee71efae6d00507f0a00b98a9b3/c=300-0-2700-2054/local/-/media/USATODAY/test/2013/09/10/1378825937000-AFP-522750344.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2759693,
                            "position": 3,
                            "type": "Interactive:Sequencer",
                            "status": "Published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": "news",
                                "subsection": "world",
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "interactivename": "usat 2013-08-21 syria primer",
                                    "name": "Understanding Syria: A visual guide to the latest crisis in the middle east ",
                                    "suppressad": "False",
                                    "collapsebuttons": "False",
                                    "longdescription": "Syria, once the center of the Islamic empire, has been the scene of many conquests throughout history before its present incarnation as a dictatorship led by a small Shiite Muslim sect battling a rebellion of Sunni Muslims. As a result, this land of mountains, fertile plains and desert is home to many ethnicities and religious groups.",
                                    "source": "AP, USA TODAY research",
                                    "origin": "usatoday",
                                    "editor": "thargro",
                                    "datecreated": "9/10/2013 2:42:56 PM",
                                    "datepublished": "9/10/2013 2:42:56 PM",
                                    "credit": "Kevin A. Kepple, Anne R. Carey, Emaun Kashfipour, Tory Hargro, Jerry Mosemak and Oren Dorell, USA TODAY",
                                    "permalink": "http://www.usatoday.com/interactive/2759693/understanding-syria-a-visual-guide-to-the-latest-crisis-in-the-middle-east-",
                                    "buttonNumbers": null,
                                    "buttonSize": null,
                                    "imageEffect": "fade-transition",
                                    "globalmage": null,
                                    "interactive": "true",
                                    "aws": "news/world"
                                },
                                "crops": null,
                                "document": "{\"events\":{\"e\":[{\"boxHead\":\"How we got here\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/6f4dc654-3bd0-4465-940e-2eb5f54f1a4a-01c_how.png\",\"boxVideo\":null},{\"boxHead\":\"Defeat government\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/53b27a43-463e-4136-b71b-12cbca6fe8d0-02a_gov_defeat.png\",\"boxVideo\":null},{\"boxHead\":\"Defeat rebels\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/6f4dc654-3bd0-4465-940e-2eb5f54f1a4a-03b_reb_defeat.png\",\"boxVideo\":null},{\"boxHead\":\"Coalition\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/a3b3ac98-bf99-4f8c-84f3-796ee10bffe5-04a_coalition_a.png\",\"boxVideo\":null},{\"boxHead\":\"Opposition\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/a3b3ac98-bf99-4f8c-84f3-796ee10bffe5-05_opposition_a.png\",\"boxVideo\":null},{\"boxHead\":\"Chemical and missile sites\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/2ecea590-31fb-481b-a0a1-b067cf9f397e-06_sites_a.png\",\"boxVideo\":null},{\"boxHead\":\"Military bases\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/873b3e0d-ef98-4b37-bc61-8b917e442c76-07_targets.png\",\"boxVideo\":null},{\"boxHead\":\"Chemical attacks\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/873b3e0d-ef98-4b37-bc61-8b917e442c76-08_chem_attacks.png\",\"boxVideo\":null},{\"boxHead\":\"Refugees\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/873b3e0d-ef98-4b37-bc61-8b917e442c76-09_refugees.png\",\"boxVideo\":null}]}}"
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "text",
                            "value": "AMMAN, Jordan — Syria's main rebel bloc warned Tuesday that President Obama should reject a Russian proposal on chemical weapons, saying it will \"lead to more death and destruction of the Syrian people.\""
                        },
                        {
                            "type": "asset",
                            "value": "2794531"
                        },
                        {
                            "type": "text",
                            "value": "The Syrian National Coalition says the West should go ahead with military strikes against the regime of President Bashar Assad to give the rebellion a chance to end the war."
                        },
                        {
                            "type": "text",
                            "value": "\"A violation of international law should lead to an international retaliation that is proportional in size,\" the group said. \"Crimes against humanity cannot be dropped by giving political concessions or by handing over the weapons used in these crimes.\""
                        },
                        {
                            "type": "text",
                            "value": "The rebels' stand comes as Human Rights Watch said evidence \"strongly suggests\" the Syrian government fired rockets with warheads containing a nerve agent — most likely sarin — into a Damascus suburb in August, killing hundreds of people."
                        },
                        {
                            "type": "text",
                            "value": "Assad has claimed that his forces are not responsible for the attack and his regime is backing a Russian proposal to place Syria's chemical weapons under international oversight. Russia says the deal should force Obama to reject military strikes."
                        },
                        {
                            "type": "text",
                            "value": "Abdulwahab Omar, a London-based Syrian activist, said the deal will do nothing to keep the body count from mounting in the war-torn country."
                        },
                        {
                            "type": "text",
                            "value": "\"The regime handing over of any quantity of chemical weapons will not end the civil war in any way,\" he said.  \"It may appear as a political achievement. But the average person on the street will live in no less fear as a result.\""
                        },
                        {
                            "type": "text",
                            "value": "Syria's foreign minister, Walid al-Moallem, said Tuesday his government has accepted the Russian-led proposal to \"uproot U.S. aggression.\" But rebels say there is little reason to believe the Assad regime will conscientiously fulfill the agreement and be upfront about the amount of chemical weapons in its stockpile."
                        },
                        {
                            "type": "text",
                            "value": "\"No one knows how many chemical weapons are in Bashar (Assad)'s possession and in addition the Syrian regime would start production of (new) chemical weapons again, anyway,\" said Ibrahim Aslan, official spokesman for the Free Syrian Army's Midwestern front in Latakia."
                        },
                        {
                            "type": "asset",
                            "value": "2794533"
                        },
                        {
                            "type": "text",
                            "value": "Some analysts said the agreement may help lessen the violence."
                        },
                        {
                            "type": "text",
                            "value": "\"The agreement provides the Russian and U.S. governments a ladder to climb down, so de-escalation can begin,\" said Fawaz Gerges, director of the Middle East Center at the London School of Economics. \"If Russia can deliver Syria when it comes to ceding control of its chemical arsenal, surely Russia can deliver Syria when it comes to a political settlement.\""
                        },
                        {
                            "type": "text",
                            "value": "Russia has been supporting Syria's regime, providing arms and preventing any meaningful action against Assad at the United Nations Security Council. Russia and China have three times vetoed U.N. resolutions calling for condemnation of the Syrian regime."
                        },
                        {
                            "type": "text",
                            "value": "The United States has sought a political settlement that would ease Assad out of power and vowed to provide some lethal aid to the rebels but thus far has not done so. More than 100,000 people have died as a result of the fighting, mostly civilians."
                        },
                        {
                            "type": "text",
                            "value": "Gerges said the Russian deal rests on the details. Up until now, Syria has denied possessing chemical weapons."
                        },
                        {
                            "type": "text",
                            "value": "\"Many things can go wrong,\" Gerges said. \"When they say putting Syria's chemical weapons under international control, what does that mean?  Will the opposition cooperate? What about the hard-liners in the Assad regime?\""
                        },
                        {
                            "type": "text",
                            "value": "And even with the doubts, activists remain firm that the chemical weapons agreement brokered by Russia cannot be a standalone deal if it is to make a difference in Syria."
                        },
                        {
                            "type": "text",
                            "value": "\"Chemical weapons account for approximately 2% of the deaths in Syria. Unless we do something which will also have a significant effect on the other 98%, all that would have been achieved is a textbook exercise,\" Omar said."
                        },
                        {
                            "type": "text",
                            "value": "\"If we can push something significantly similar with the conventional weapons arsenal of Syria, not just the chemical weapons, then we would have done something significant, in which to prevent people losing their lives,\" he added."
                        },
                        {
                            "type": "text",
                            "value": "The Syrian National Coalition said Moscow's proposal \"aims to procrastinate and will lead to more death and destruction of the Syrian people.\""
                        },
                        {
                            "type": "text",
                            "value": "Dumalaon reported from Berlin"
                        }
                    ],
                    "id": 2792593,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Syrian rebels warn: Russia-brokered deal would fail",
                        "shortHeadline": "Syrian rebels: Russia-brokered deal would fail",
                        "byline": "Nuha Shabaan and Janelle Dumalaon, Special for USA TODAY",
                        "editedHeadline": null,
                        "storyabstract": "AMMAN, Jordan — Syria's main rebel bloc warned Tuesday that President Obama should reject a Russian proposal on chemical weapons, saying it will \"lead to more death and destruction of the Syrian people.\" The Syrian National Coalition says the West should go ahead with military strikes against the regime of President Bashar Assad to give the rebellion a chance to end the war. \"A violation of international law should lead to an international retaliation that is proportional in size,\" the group said. \"Crimes against humanity cannot be dropped by giving political concessions or by handing over the weapons used in these crimes.\" The rebels' stand comes as Human Rights Watch said evidence \"strongly suggests\" the Syrian government fired rockets with warheads containing a nerve agent — most likely sarin — into a Damascus suburb in August, killing hundreds of people.",
                        "brief": "They argue a political concession by Assad will do nothing to reduce body count in Syria.",
                        "storyhighlights": [
                            "Syrian National Coalition urges West to go ahead with airstrikes",
                            "Says Assad regime won%27t be upfront about chemical weapons",
                            "But some analysts say the deal likely would reduce violence"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T15:30:20.9085496-04:00",
                            "feeddateline": "2013-09-10T15:30:20.9085496-04:00",
                            "published": "2013-09-10T19:29:24Z",
                            "lastupdated": "2013-09-10T19:30:21Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "world",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/world/2013/09/10/syria-rebels-chemical-weapons/2792593/",
                            "shorturl": "http://usat.ly/1fW95iq",
                            "mobileurl": "http://usat.ly/1fW95iq"
                        },
                        "firstAsset": 2794531,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "news/world",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2794533,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "2369",
                                    "oImageWidth": "3554",
                                    "sImageHeight": "333",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Ahmad Aboud, AFP/Getty Images",
                                    "alternate": null,
                                    "title": "Syrian rebels",
                                    "caption": "A firetruck sits amid heavily damaged buildings in the Syria's eastern town of Deir Ezzor on Sept. 10, 2013. The United States is waiting to see a Russian proposal to put Syria's chemical weapons stock under international control, but will not wait for long, top diplomat John Kerry said.",
                                    "datephototaken": "9-10-2013",
                                    "cutline": "A firetruck sits amid heavily damaged buildings in the Syria's eastern town of Deir Ezzor on Sept. 10, 2013. The United States is waiting to see a Russian proposal to put Syria's chemical weapons stock under international control, but will not wait for long, top diplomat John Kerry said.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AFP 522756085.jpg",
                                    "imgIndex": "1378840635001",
                                    "imgUniqueName": "1378840635001-AFP-522756085.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/10/1378840635001-AFP-522756085.jpg",
                                    "smallbasename": "/-mm-/4044b1e7645488621f157de466cf1a990870caa2/r=500x333/local/-/media/USATODAY/GenericImages/2013/09/10/1378840635001-AFP-522756085.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/10/1378840635001-AFP-522756085.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/765ee512e5933230fb1de0a461af1fb246c84ab7/c=0-0-2366-2369/local/-/media/USATODAY/GenericImages/2013/09/10/1378840635001-AFP-522756085.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/d928123ef9707b671415f3305614f71304120998/c=156-0-3305-2369/local/-/media/USATODAY/GenericImages/2013/09/10/1378840635001-AFP-522756085.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/2f1fca46c087ed6d545eb370a63942fab8ad42e4/c=483-0-2260-2369/local/-/media/USATODAY/GenericImages/2013/09/10/1378840635001-AFP-522756085.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/d61cc52ac115c0b844becf1b815dc4a8f356a19b/c=0-113-3554-2120/local/-/media/USATODAY/GenericImages/2013/09/10/1378840635001-AFP-522756085.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/bf3b3efaaae8b46270d771788ff2a0b85a872523/c=597-0-1919-2369/local/-/media/USATODAY/GenericImages/2013/09/10/1378840635001-AFP-522756085.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/95c9820f820718860d5e745deed5926a70092acd/c=383-0-3155-2369/local/-/media/USATODAY/GenericImages/2013/09/10/1378840635001-AFP-522756085.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2794531,
                            "position": 2,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "450",
                                    "oImageWidth": "800",
                                    "sImageHeight": "281",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Mohamed Kaddour, AFP/Getty Images",
                                    "alternate": null,
                                    "title": "Syrian rebels",
                                    "caption": "A rebel fighter fires a heavy machine gun mounted on the back of a pickup during a battle with Syrian government forces in the rebel-held northwestern Syrian province of Idlib on Sept. 9, 2013. Syrian President Bashar Assad warned Washington to brace for retaliation if U.S. forces attacked his war-torn country.",
                                    "datephototaken": "9-10-2013",
                                    "cutline": "A rebel fighter fires a heavy machine gun mounted on the back of a pickup during a battle with Syrian government forces in the rebel-held northwestern Syrian province of Idlib on Sept. 9, 2013. Syrian President Bashar Assad warned Washington to brace for retaliation if U.S. forces attacked his war-torn country.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "AFP 522709673.jpg",
                                    "imgIndex": "1378840635000",
                                    "imgUniqueName": "1378840635000-AFP-522709673.jpg",
                                    "isImageVisitedByUser": "False",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/10/1378840635000-AFP-522709673.jpg",
                                    "smallbasename": "/-mm-/33d97f8a03d5ea06baca0f7a30eca34c8bd87643/r=500x281/local/-/media/USATODAY/GenericImages/2013/09/10/1378840635000-AFP-522709673.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/10/1378840635000-AFP-522709673.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/8f14b0b17924b093a1602a41bf697c1cd9b47452/c=176-0-625-450/local/-/media/USATODAY/GenericImages/2013/09/10/1378840635000-AFP-522709673.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/6855d28072ebec9586c5c5be32eaa8d0406d7f7d/c=152-0-748-450/local/-/media/USATODAY/GenericImages/2013/09/10/1378840635000-AFP-522709673.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/0ff4cc843d2bc1e670420914bc786825e25de379/c=177-0-515-450/local/-/media/USATODAY/GenericImages/2013/09/10/1378840635000-AFP-522709673.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/446784dcc108243ee1f15c6b065c4b7a87e2459a/c=1-0-796-450/local/-/media/USATODAY/GenericImages/2013/09/10/1378840635000-AFP-522709673.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/0d57e080996d96b7beab19b2fa956a138b1c8155/c=220-0-472-450/local/-/media/USATODAY/GenericImages/2013/09/10/1378840635000-AFP-522709673.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/af38a437cd807993bfd4cb6b7d91d1cab2e59949/c=136-0-664-450/local/-/media/USATODAY/GenericImages/2013/09/10/1378840635000-AFP-522709673.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "text",
                            "value": "Sept. 11, 2001, was Valerie Sanetrik's 10th birthday. Mom Denise Morris had a party planned, with cake ready."
                        },
                        {
                            "type": "asset",
                            "value": "2785501"
                        },
                        {
                            "type": "text",
                            "value": "Then came the devastating news that terrorists had hijacked four planes and killed thousands of people. Any idea of celebrating fell by the wayside."
                        },
                        {
                            "type": "text",
                            "value": "While discussing the postponement of the birthday fete, Val asked  about the victims who \"will never get to have another birthday,\" Morris recalls."
                        },
                        {
                            "type": "text",
                            "value": "So the family made a decision: They would still have a birthday gathering, albeit a smaller, more somber one, and instead of just marking Val's birthday, they would also light candles on the cake for those who were killed."
                        },
                        {
                            "type": "text",
                            "value": "Every year since then, the family has gathered on Sept. 11, with one cake and candles for Val and another cake and candles dedicated to those who lost their lives."
                        },
                        {
                            "type": "text",
                            "value": "\"We all celebrate her birthday,\" Morris says. \"And we all celebrate all of their birthdays.\""
                        },
                        {
                            "type": "text",
                            "value": "The 12th anniversary of the Sept. 11 attacks will be marked by formal events such as public readings of victims' names, wreath-laying ceremonies and charity fundraisers."
                        },
                        {
                            "type": "text",
                            "value": "But across the country, there will also be countless modest actions to honor the heroes and memorialize the victims of that day, such as a family in Norfolk, Va., blowing out the candles on a special cake."
                        },
                        {
                            "type": "text",
                            "value": "People will donate blood, fly American flags, attend religious services and take baked goods to firehouses. They will spend extra time with family, give money to charity and volunteer at soup kitchens."
                        },
                        {
                            "type": "text",
                            "value": "Some who take these small but significant actions have a direct link to the horrors of Sept. 11, such as losing a loved one. Others don't have a close connection but want to commemorate the day."
                        },
                        {
                            "type": "text",
                            "value": "Nearly half of Americans plan to observe this anniversary in an informal way, such as saying a prayer or taking a moment of silence, according to a new American Pulse survey. Thirteen percent will do it in a more formal manner such as attending a memorial service."
                        },
                        {
                            "type": "text",
                            "value": "Even with the passage of time, the desire to recognize each anniversary remains strong, says David Paine, president and co-founder of the 9/11 Day Observance."
                        },
                        {
                            "type": "text",
                            "value": "His organization encourages people to perform a good deed in tribute to the victims. For this Sept. 11, more than 20,000 people have made such a pledge on the group's 911Day.org website.  The 9/11 Day Observance expects to have more than 40,000 pledges by the end of the day Wednesday."
                        },
                        {
                            "type": "text",
                            "value": "\"The reason you see this outpouring of support with Sept. 11 is that the entire country feels like they were victims,\" Paine says. \"They are trying to find a way to pay respects and find a way to regain control over what they felt.\""
                        },
                        {
                            "type": "text",
                            "value": "Those who volunteer or do some other constructive deed want \"to take what was painful and turn it into a positive experience,\" he says."
                        },
                        {
                            "type": "text",
                            "value": "SOMETIMES IT'S SIMPLE THINGS"
                        },
                        {
                            "type": "text",
                            "value": "The homage on Sept. 11 —  deemed by Congress a \"National Day of Service and Remembrance\"  — is varied. Some people take brownies to a firehouse or clothes to the needy. Others give something more personal: their blood."
                        },
                        {
                            "type": "text",
                            "value": "The New York Blood Center says Sept. 11 is a popular day for people to show up to make donations. The numbers aren't as plentiful as they were in 2001, 2002 and 2003 — at 6,103, 3,599 and 3,150 respectively —  but they are higher than normal."
                        },
                        {
                            "type": "text",
                            "value": "Last year, 2,562 people walked in on Sept. 11, compared with 1,727 a week later  and 2,127 two weeks later."
                        },
                        {
                            "type": "text",
                            "value": "\"Sept. 11 is a special day,\" says Harvey Schaffler, New York Blood Center executive director for donor marketing. \"People like to pay tribute through a personal tradition.\""
                        },
                        {
                            "type": "text",
                            "value": "Louise Kramer and Tracy Nieporent have carved out their own ritual. Each year, just before Sept. 11, they meet for lunch in Manhattan."
                        },
                        {
                            "type": "asset",
                            "value": "2777221"
                        },
                        {
                            "type": "text",
                            "value": "On Sept. 10, 2001, Kramer, then a journalist, and Nieporent, a partner in the Myriad Restaurant Group, met at his company's Tribeca Grill for their first-ever business lunch."
                        },
                        {
                            "type": "text",
                            "value": "\"The next day, everything completely changed,\" Kramer says. She stayed in touch with Nieporent while reporting on stories such as how downtown restaurants  provided food to World Trade Center recovery workers."
                        },
                        {
                            "type": "text",
                            "value": "They've continued to meet every year, usually in the same seats at the same restaurant, to reconnect and reflect."
                        },
                        {
                            "type": "text",
                            "value": "Christopher Neck's Sept. 11 tradition is more strenuous:  He clocks 10 miles on a treadmill."
                        },
                        {
                            "type": "asset",
                            "value": "2785521"
                        },
                        {
                            "type": "text",
                            "value": "In 2001, Neck was in Blacksburg,Va., running on a treadmill and watching TV, when he first heard about the attacks. Now he marks the anniversary by recreating that morning's exercise."
                        },
                        {
                            "type": "text",
                            "value": "\"We all have our different ways of commemorating or remembering,\" says Neck, a management professor at Arizona State University. \"This is my thing. It's a simple thing, but it means something.\""
                        },
                        {
                            "type": "text",
                            "value": "EXPECTS PEOPLE TO FORGET"
                        },
                        {
                            "type": "text",
                            "value": "Lisa Della Pietra, who lost her younger brother Joseph when the twin towers collapsed, knows that with each passing year, the number of those who honor the anniversary is likely to diminish."
                        },
                        {
                            "type": "text",
                            "value": "\"Do I think people are going to forget? Of course I do,\" she says. \"I'm not foolish.\""
                        },
                        {
                            "type": "text",
                            "value": "But she is also well aware of, and thankful for, all the people who remember."
                        },
                        {
                            "type": "asset",
                            "value": "2790347"
                        },
                        {
                            "type": "text",
                            "value": "There are the friends who contact her each Sept. 11, as well as those who donate money to the 9/11 Scholarship Fund at Brooklyn's Poly Prep Country Day School, which pays tribute to her brother and 10 other alumni and one student's parent who perished."
                        },
                        {
                            "type": "text",
                            "value": "On Wednesday, Della Pietra won't be at any elaborate events. She'll be in the 9/11 Memorial Garden at Poly Prep for a quiet ceremony there."
                        },
                        {
                            "type": "text",
                            "value": "Then she will return to her Brooklyn home and plant mums in her garden."
                        },
                        {
                            "type": "text",
                            "value": "Those flowers will come from someone who has his own way of marking the day: They are provided by her florist, who refuses to accept money for the flowers she plants each Sept. 11."
                        },
                        {
                            "type": "text",
                            "value": "\"He says, 'This is my gift to Joey and the garden,'\" she says."
                        },
                        {
                            "type": "text",
                            "value": "And while Della Pietra knows the nation's tributes to her brother and the other 9/11 victims will fade with time, she hopes that they won't disappear completely."
                        },
                        {
                            "type": "asset",
                            "value": "2787733"
                        },
                        {
                            "type": "text",
                            "value": "\"I always hope that the morning of Sept. 11 — even if it's just for a second, one small second of your life — that people will just stop and think about that day,\" she says. \"You hope that every person who wakes up that day thinks in some small way of the 3,000 people who perished.\""
                        },
                        {
                            "type": "text",
                            "value": "Contributing: Rebecca Castagna"
                        },
                        {
                            "type": "asset",
                            "value": "2787741"
                        }
                    ],
                    "id": 2774173,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "Sept. 11 remembrances still take many forms",
                        "shortHeadline": "9/11 tributes keep memories alive",
                        "byline": "Laura Petrecca, USA TODAY ",
                        "editedHeadline": "Americans find personal ways to remember 9/11",
                        "storyabstract": "Sept. 11, 2001, was Valerie Sanetrik's 10th birthday. Mom Denise Morris had a party planned, with cake ready. Then came the devastating news that terrorists had hijacked four planes and killed thousands of people. Any idea of celebrating fell by the wayside. While discussing the postponement of the birthday fete, Val asked  about the victims who \"will never get to have another birthday,\" Morris recalls. So the family made a decision: They would still have a birthday gathering, albeit a smaller, more somber one, and instead of just marking Val's birthday, they would also light candles on the cake for those who were killed. Every year since then, the family has gathered on Sept. 11, with one cake and candles for Val and another cake and candles dedicated to those who lost their lives.",
                        "brief": "Modest, even unconventional, tributes help to memorialize 9/11 victims.",
                        "storyhighlights": [
                            "Many will take modest but meaningful actions to memorialize the victims",
                            "Nearly half of Americans plan to observe the anniversary in an informal way",
                            "Sept. 11 is deemed by Congress as a %22National Day of Service and Remembrance%22"
                        ],
                        "dates": {
                            "embargodate": "2013-09-09T20:57:18.998923-04:00",
                            "feeddateline": "2013-09-09T20:57:18.998923-04:00",
                            "published": "2013-09-09T23:36:05Z",
                            "lastupdated": "2013-09-10T00:57:19Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "nation",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/nation/2013/09/09/sept-11-anniversary/2774173/",
                            "shorturl": "http://usat.ly/1fQuiud",
                            "mobileurl": "http://usat.ly/1fQuiud"
                        },
                        "firstAsset": 2787945,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "news/national",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2790347,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "4912",
                                    "oImageWidth": "7360",
                                    "sImageHeight": "333",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Jennifer S. Altman for USA TODAY",
                                    "alternate": null,
                                    "title": "Sept. 11",
                                    "caption": "Lisa Della Pietra, age 44, is seen in a memorial garden at Poly Prep Country Day School. Della Pietra came to work at Poly Prep after 9/11 and she lost her brother in the World Trade Center attacks. Both of them are alumnae. -- Small things people do to mark Sept. 11.",
                                    "datephototaken": "9-8-2013",
                                    "cutline": "Lisa Della Pietra, age 44, is seen in a memorial garden at Poly Prep Country Day School. Della Pietra came to work at Poly Prep after 9/11 and she lost her brother in the World Trade Center attacks. Both of them are alumnae. -- Small things people do to mark Sept. 11.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "XXX Sept.-11011.jpg",
                                    "imgIndex": "1378767885000",
                                    "imgUniqueName": "1378767885000-XXX-Sept-11011.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/09/1378767885000-XXX-Sept-11011.jpg",
                                    "smallbasename": "/-mm-/4044b1e7645488621f157de466cf1a990870caa2/r=500x333/local/-/media/USATODAY/GenericImages/2013/09/09/1378767885000-XXX-Sept-11011.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/09/1378767885000-XXX-Sept-11011.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/aa58575a40ac989b8b2dfa02c78debbf555c0df1/c=456-0-5358-4912/local/-/media/USATODAY/GenericImages/2013/09/09/1378767885000-XXX-Sept-11011.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/9bddee08de43f3bc34a05df2d0ae40695e517a0a/c=117-250-5991-4675/local/-/media/USATODAY/GenericImages/2013/09/09/1378767885000-XXX-Sept-11011.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/a07e147002798f208310b0da6fc27dca7d7bd263/c=471-0-4151-4912/local/-/media/USATODAY/GenericImages/2013/09/09/1378767885000-XXX-Sept-11011.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/e0dc2f19c8d45fb3532972c267c2d4b068152f9c/c=0-383-7360-4543/local/-/media/USATODAY/GenericImages/2013/09/09/1378767885000-XXX-Sept-11011.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/eb4cfe72d2b47dfef7373e39d2dc60ef076826b2/c=1074-0-3812-4912/local/-/media/USATODAY/GenericImages/2013/09/09/1378767885000-XXX-Sept-11011.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/af443f9161cc93a6555ac2bc255979b64b6105b8/c=809-0-6550-4912/local/-/media/USATODAY/GenericImages/2013/09/09/1378767885000-XXX-Sept-11011.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2787945,
                            "position": 2,
                            "type": "Interactive:Sequencer",
                            "status": "Published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": "news",
                                "subsection": "",
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "interactivename": "usat 2013-09-10  911 poll",
                                    "name": "How Americans view 9/11",
                                    "suppressad": "False",
                                    "collapsebuttons": "False",
                                    "longdescription": "Twelve years later, the terrorist attacks continue to influence the lives of many people, according to an American Pulse survey for USA TODAY.",
                                    "source": "American Pulse survey of 2,582 respondents conducted online Aug. 20 to Aug. 27, 2013. Margin of error is +/- 1.97%",
                                    "origin": "usatoday",
                                    "editor": "jloehrke",
                                    "datecreated": "9/10/2013 9:49:17 AM",
                                    "datepublished": "9/10/2013 9:49:17 AM",
                                    "credit": "Janet Loehrke, USA TODAY",
                                    "permalink": "http://www.usatoday.com/interactive/2787945/how-americans-view-911",
                                    "buttonNumbers": null,
                                    "buttonSize": null,
                                    "imageEffect": "vslide-transition",
                                    "globalmage": null,
                                    "interactive": "true",
                                    "aws": "news"
                                },
                                "crops": null,
                                "document": "{\"events\":{\"e\":[{\"boxHead\":\"9/11 attacks\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/08961db7-c301-4ca5-a16d-f48dc94cc685-911poll-01.png\",\"boxVideo\":null},{\"boxHead\":\"9/11 observance\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/08961db7-c301-4ca5-a16d-f48dc94cc685-911poll-02.png\",\"boxVideo\":null},{\"boxHead\":\"Moving on from 9/11\",\"boxPhoto\":\"http://i.usatoday.net/_common/_notches/08961db7-c301-4ca5-a16d-f48dc94cc685-911poll-03.png\",\"boxVideo\":null}]}}"
                            }
                        },
                        {
                            "id": 2785501,
                            "position": 3,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "2448",
                                    "oImageWidth": "3264",
                                    "sImageHeight": "375",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "handout",
                                    "alternate": null,
                                    "title": "Morris family",
                                    "caption": "Valerie Sanetrik was born on Sept. 11, so on that date each year, her family gathers to celebrate her birthday, as well as to honor the birthdays of all the Sept. 11, 2001, terrorist attack victims.",
                                    "datephototaken": "9-5-2013",
                                    "cutline": "Valerie Sanetrik was born on Sept. 11, so on that date each year, her family gathers to celebrate her birthday, as well as to honor the birthdays of all the Sept. 11, 2001, terrorist attack victims.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "Morris family .jpg",
                                    "imgIndex": "1378735295000",
                                    "imgUniqueName": "1378735295000-Morris-family-.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/09/1378735295000-Morris-family-.jpg",
                                    "smallbasename": "/-mm-/3d5569507733ca056af5edaf0a2a8036c559fb13/r=500x375/local/-/media/USATODAY/GenericImages/2013/09/09/1378735295000-Morris-family-.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/09/1378735295000-Morris-family-.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/41d85c9ac81b234cb8a3ce6f8f1f31ac7d930327/c=313-0-2761-2448/local/-/media/USATODAY/GenericImages/2013/09/09/1378735295000-Morris-family-.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/209496ef8e15ec974055f2b972cb017799a2d254/c=0-0-3264-2448/local/-/media/USATODAY/GenericImages/2013/09/09/1378735295000-Morris-family-.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/d02524bd319e0c3200fcbae6602c01db664915a5/c=724-0-2558-2448/local/-/media/USATODAY/GenericImages/2013/09/09/1378735295000-Morris-family-.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/0dc7e3e3899221cd4409ffaf35724218403fe61a/c=0-195-3264-2036/local/-/media/USATODAY/GenericImages/2013/09/09/1378735295000-Morris-family-.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/40632d30a13c448669ea03233d9a7b6649ad2e0a/c=881-0-2252-2448/local/-/media/USATODAY/GenericImages/2013/09/09/1378735295000-Morris-family-.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/464821f7cf175d966d86fde4b2e8af139d5cd3e2/c=124-0-2989-2448/local/-/media/USATODAY/GenericImages/2013/09/09/1378735295000-Morris-family-.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2777221,
                            "position": 4,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "733",
                                    "oImageWidth": "909",
                                    "sImageHeight": "400",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "none",
                                    "alternate": null,
                                    "title": "Louise Kramer and Tracy Nieporent",
                                    "caption": "Professional contacts-turned-friends Louise Kramer and Tracy Nieporent meet for lunch just prior to Sept. 11 each year.  Their first ever in-person meeting was Sept. 10, 2001.",
                                    "datephototaken": "9-9-2011",
                                    "cutline": "Professional contacts-turned-friends Louise Kramer and Tracy Nieporent meet for lunch just prior to Sept. 11 each year.  Their first ever in-person meeting was Sept. 10, 2001.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "Annual Lunch with Tracy Nieporent 9-9-11 - 1.jpg.jpeg",
                                    "imgIndex": "1378494397000",
                                    "imgUniqueName": "1378494397000-Annual-Lunch-with-Tracy-Nieporent-9-9-11---1jpg.jpeg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/06/1378494397000-Annual-Lunch-with-Tracy-Nieporent-9-9-11---1jpg.jpeg",
                                    "smallbasename": "/-mm-/50117b4bfe181f32492ec4d414638d7c08e560e6/r=500x400/local/-/media/USATODAY/GenericImages/2013/09/06/1378494397000-Annual-Lunch-with-Tracy-Nieporent-9-9-11---1jpg.jpeg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/06/1378494397000-Annual-Lunch-with-Tracy-Nieporent-9-9-11---1jpg.jpeg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/d0157bc3e228831a8b53fd423f4e53f0907ee5fd/c=90-0-818-733/local/-/media/USATODAY/GenericImages/2013/09/06/1378494397000-Annual-Lunch-with-Tracy-Nieporent-9-9-11---1jpg.jpeg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/9d1c720cfaf643df680d09664bcaef3ae24552ac/c=0-14-909-703/local/-/media/USATODAY/GenericImages/2013/09/06/1378494397000-Annual-Lunch-with-Tracy-Nieporent-9-9-11---1jpg.jpeg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/ed44162894fd0adfe4df9d9596cdd3a7fb154f08/c=154-0-699-733/local/-/media/USATODAY/GenericImages/2013/09/06/1378494397000-Annual-Lunch-with-Tracy-Nieporent-9-9-11---1jpg.jpeg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/665caefdf411b371b69b07401b316df9614a2ac1/c=0-27-909-544/local/-/media/USATODAY/GenericImages/2013/09/06/1378494397000-Annual-Lunch-with-Tracy-Nieporent-9-9-11---1jpg.jpeg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/0a90f812d81a678960bc179debc7328e1b5d07c7/c=209-0-616-733/local/-/media/USATODAY/GenericImages/2013/09/06/1378494397000-Annual-Lunch-with-Tracy-Nieporent-9-9-11---1jpg.jpeg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/354c397e57c841e357f294daa83a4dfb409f70a0/c=12-0-863-733/local/-/media/USATODAY/GenericImages/2013/09/06/1378494397000-Annual-Lunch-with-Tracy-Nieporent-9-9-11---1jpg.jpeg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2785521,
                            "position": 5,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "3264",
                                    "oImageWidth": "2448",
                                    "sImageHeight": "400",
                                    "sImageWidth": "300",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "handout",
                                    "alternate": null,
                                    "title": "Christopher Neck",
                                    "caption": "Christopher Neck's Sept. 11 tradition is to run ten miles on a treadmill.   In 2001, Neck was in Blacksburg,Va., running on a treadmill and watching TV when he first heard about the attacks. Now he marks the anniversary by recreating that morning's exercise.",
                                    "datephototaken": "9-7-2013",
                                    "cutline": "Christopher Neck's Sept. 11 tradition is to run ten miles on a treadmill.   In 2001, Neck was in Blacksburg,Va., running on a treadmill and watching TV when he first heard about the attacks. Now he marks the anniversary by recreating that morning's exercise.",
                                    "orientation": "vertical",
                                    "OrigImageName": "Christopher Neck.jpg",
                                    "imgIndex": "1378735454000",
                                    "imgUniqueName": "1378735454000-Christopher-Neck.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/09/1378735454000-Christopher-Neck.jpg",
                                    "smallbasename": "/-mm-/734fac10538d13406c1d7cd31ef155a9e07b4676/r=300x400/local/-/media/USATODAY/GenericImages/2013/09/09/1378735454000-Christopher-Neck.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/09/1378735454000-Christopher-Neck.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/05edf3be603d6063acd4bcb30339637f72e74453/c=0-448-2448-2896/local/-/media/USATODAY/GenericImages/2013/09/09/1378735454000-Christopher-Neck.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/4ab57c6abd16f9fe80875fc920b6184c37f5f337/c=0-416-2448-2260/local/-/media/USATODAY/GenericImages/2013/09/09/1378735454000-Christopher-Neck.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/c28dbe1f5011589679bf7f4061f5cce45676d413/c=179-342-2366-3255/local/-/media/USATODAY/GenericImages/2013/09/09/1378735454000-Christopher-Neck.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/164b735715e8bee8322aec8d61cb809169e80d69/c=0-432-2448-1811/local/-/media/USATODAY/GenericImages/2013/09/09/1378735454000-Christopher-Neck.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/b69a71beba91511657db91a4d754190b3aa6e86f/c=432-408-2023-3255/local/-/media/USATODAY/GenericImages/2013/09/09/1378735454000-Christopher-Neck.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/fa15961b8c3cda9bc176b505a9e8eb2bd8596861/c=0-432-2448-2521/local/-/media/USATODAY/GenericImages/2013/09/09/1378735454000-Christopher-Neck.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2787733,
                            "position": 6,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "854",
                                    "oImageWidth": "1280",
                                    "sImageHeight": "333",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Handout",
                                    "alternate": null,
                                    "title": "P.S. 140",
                                    "caption": "Students of P.S. 140 joined with parents and teachers to hand-make thank you cards for soldier stationed overseas.",
                                    "datephototaken": "9-9-2013",
                                    "cutline": "Students of P.S. 140 joined with parents and teachers to hand-make thank you cards for soldier stationed overseas.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "P.S. 140 .jpg",
                                    "imgIndex": "1378748558000",
                                    "imgUniqueName": "1378748558000-PS-140-.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/09/1378748558000-PS-140-.jpg",
                                    "smallbasename": "/-mm-/4044b1e7645488621f157de466cf1a990870caa2/r=500x333/local/-/media/USATODAY/GenericImages/2013/09/09/1378748558000-PS-140-.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/09/1378748558000-PS-140-.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/f7b5e505e53d9a60feb3926d9c05b82b24fc9df8/c=128-0-980-854/local/-/media/USATODAY/GenericImages/2013/09/09/1378748558000-PS-140-.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/ae9fad9d49aa7e4c618190d73455390e29b2e8ea/c=12-0-1146-854/local/-/media/USATODAY/GenericImages/2013/09/09/1378748558000-PS-140-.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/373fd9e6bf780e7be7ef9e04b9fc65654028c035/c=268-0-908-854/local/-/media/USATODAY/GenericImages/2013/09/09/1378748558000-PS-140-.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/4a25606c340fbd1f1ac6a233b49a43dd168710d9/c=0-92-1280-815/local/-/media/USATODAY/GenericImages/2013/09/09/1378748558000-PS-140-.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/f11328f39eff3fff0a53d3e5b97694d57b7aabdf/c=384-0-860-854/local/-/media/USATODAY/GenericImages/2013/09/09/1378748558000-PS-140-.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/6552b578b0ae22598e5ea81a015c331d6e32a133/c=38-0-1036-854/local/-/media/USATODAY/GenericImages/2013/09/09/1378748558000-PS-140-.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2787741,
                            "position": 7,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "852",
                                    "oImageWidth": "1280",
                                    "sImageHeight": "332",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "Handout",
                                    "alternate": null,
                                    "title": "Veterans Residence",
                                    "caption": "More than 200 people volunteered on 9/11 in 2012 to help repaint and landscape the 119th Street Veterans Residence in New York City",
                                    "datephototaken": "9-9-2013",
                                    "cutline": "More than 200 people volunteered on 9/11 in 2012 to help repaint and landscape the 119th Street Veterans Residence in New York City",
                                    "orientation": "horizontal",
                                    "OrigImageName": "Veterans Residence.jpg",
                                    "imgIndex": "1378748611000",
                                    "imgUniqueName": "1378748611000-Veterans-Residence.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/09/1378748611000-Veterans-Residence.jpg",
                                    "smallbasename": "/-mm-/521cd80a4fb9f1f1edf37d025629b379daee5bba/r=500x332/local/-/media/USATODAY/GenericImages/2013/09/09/1378748611000-Veterans-Residence.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/09/1378748611000-Veterans-Residence.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/dee23e946314c56f298669918468d1c8f6df134a/c=209-0-1059-852/local/-/media/USATODAY/GenericImages/2013/09/09/1378748611000-Veterans-Residence.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/159c51fed312d8a80089a0a0692e2d7a4e8345c3/c=102-0-1233-852/local/-/media/USATODAY/GenericImages/2013/09/09/1378748611000-Veterans-Residence.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/bcad4d5471b28a5ed9f545ee2a16955ea7c6e500/c=120-0-757-852/local/-/media/USATODAY/GenericImages/2013/09/09/1378748611000-Veterans-Residence.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/0620daf1e57ccc4f712271ece3f3aa240ce76e52/c=0-30-1280-754/local/-/media/USATODAY/GenericImages/2013/09/09/1378748611000-Veterans-Residence.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/ff774b4c1ff46698b3d271afe2ea9a35ba3dba48/c=128-0-604-852/local/-/media/USATODAY/GenericImages/2013/09/09/1378748611000-Veterans-Residence.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/24c86f9f884b61c18ab45609e79b878fae6aebd7/c=197-0-1190-852/local/-/media/USATODAY/GenericImages/2013/09/09/1378748611000-Veterans-Residence.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2785565,
                            "position": 8,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "320",
                                    "oImageWidth": "214",
                                    "sImageHeight": "400",
                                    "sImageWidth": "267",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "None None",
                                    "alternate": null,
                                    "title": "volunteers on 9-11",
                                    "caption": "Children joined in as volunteers on 9/11 last year to help landscape the East Avenue Apartments in Chesapeake, Maryland, a housing complex for low-income families.",
                                    "datephototaken": "9-9-2013",
                                    "cutline": "Children joined in as volunteers on 9/11 last year to help landscape the East Avenue Apartments in Chesapeake, Maryland, a housing complex for low-income families.",
                                    "orientation": "vertical",
                                    "OrigImageName": "volunteers on 9-11 .jpg",
                                    "imgIndex": "1378736375000",
                                    "imgUniqueName": "1378736375000-volunteers-on-9-11-.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/09/1378736375000-volunteers-on-9-11-.jpg",
                                    "smallbasename": "/-mm-/4edc83e488b64aa5ca4f6e8329a23d489e87a606/r=267x400/local/-/media/USATODAY/GenericImages/2013/09/09/1378736375000-volunteers-on-9-11-.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/09/1378736375000-volunteers-on-9-11-.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/7ce6493abf1758cc5109ddad22f66a861f4cfb72/c=0-40-214-253/local/-/media/USATODAY/GenericImages/2013/09/09/1378736375000-volunteers-on-9-11-.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/dc8cf48c1f92a532c307e120b68b5e7d912de89e/c=0-60-214-220/local/-/media/USATODAY/GenericImages/2013/09/09/1378736375000-volunteers-on-9-11-.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/a6e8642b68cecdd94784251c14b9f9fa6d7b66b2/c=0-3-214-288/local/-/media/USATODAY/GenericImages/2013/09/09/1378736375000-volunteers-on-9-11-.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/0ed4f627a15565594088d94ba320d73b094581de/c=0-52-214-172/local/-/media/USATODAY/GenericImages/2013/09/09/1378736375000-volunteers-on-9-11-.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/27986adff91fc33e7af0247976935333ebd68f84/c=18-0-197-320/local/-/media/USATODAY/GenericImages/2013/09/09/1378736375000-volunteers-on-9-11-.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/7d7059cf98a4fea7a4c9ac9774a5b3d92489d72f/c=0-56-214-239/local/-/media/USATODAY/GenericImages/2013/09/09/1378736375000-volunteers-on-9-11-.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2785563,
                            "position": 9,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "214",
                                    "oImageWidth": "320",
                                    "sImageHeight": "334",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "handout",
                                    "alternate": null,
                                    "title": "PS 140 in lower Manhattan",
                                    "caption": "Students of PS 140 in lower Manhattan took it upon themselves to help revitalize their playground for the 10th anniversary of 9/11 in 2011.",
                                    "datephototaken": "9-9-2013",
                                    "cutline": "Students of PS 140 in lower Manhattan took it upon themselves to help revitalize their playground for the 10th anniversary of 9/11 in 2011.",
                                    "orientation": "horizontal",
                                    "OrigImageName": " PS 140 in lower Manhattan .jpg",
                                    "imgIndex": "1378736330000",
                                    "imgUniqueName": "1378736330000--PS-140-in-lower-Manhattan-.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/GenericImages/2013/09/09/1378736330000--PS-140-in-lower-Manhattan-.jpg",
                                    "smallbasename": "/-mm-/a9504bd23c6952d902dfb3cc189a32ea2456a151/r=500x334/local/-/media/USATODAY/GenericImages/2013/09/09/1378736330000--PS-140-in-lower-Manhattan-.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/GenericImages/2013/09/09/1378736330000--PS-140-in-lower-Manhattan-.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/c73ad9d9ad883801b328b3961debe1b126417ba0/c=45-0-259-214/local/-/media/USATODAY/GenericImages/2013/09/09/1378736330000--PS-140-in-lower-Manhattan-.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/db849bab201960b0e7bd5dec2362e2acbc57c462/c=11-0-295-214/local/-/media/USATODAY/GenericImages/2013/09/09/1378736330000--PS-140-in-lower-Manhattan-.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/03ef2adb3e5d7c77a578d6330b9d5c12797465a1/c=52-0-212-214/local/-/media/USATODAY/GenericImages/2013/09/09/1378736330000--PS-140-in-lower-Manhattan-.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/0c4841ca24be2a718bbf7b61e4b5b7313f1c63e7/c=0-23-320-204/local/-/media/USATODAY/GenericImages/2013/09/09/1378736330000--PS-140-in-lower-Manhattan-.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/60985d81a7c7906f742751cde68be926e25d51f0/c=83-0-203-214/local/-/media/USATODAY/GenericImages/2013/09/09/1378736330000--PS-140-in-lower-Manhattan-.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/1f13fb78ebab405b2468bf1ab17d9ae5f55fd473/c=36-0-288-214/local/-/media/USATODAY/GenericImages/2013/09/09/1378736330000--PS-140-in-lower-Manhattan-.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "body": [
                        {
                            "type": "asset",
                            "value": "2759093"
                        },
                        {
                            "type": "text",
                            "value": "Can Bill de Blasio win the Democratic nomination for New York City mayor on Tuesday night?"
                        },
                        {
                            "type": "text",
                            "value": "That's the overriding question as a fraction of the city's estimated 4.7 million voters go to the polls Tuesday to choose a Democratic and Republican nominee who will face off Nov. 5 to replace independent Michael Bloomberg."
                        },
                        {
                            "type": "text",
                            "value": "Polls close at 9 p.m. ET."
                        },
                        {
                            "type": "text",
                            "value": "De Blasio, the city's public advocate, surged in public opinion polls in recent weeks as he played up his plans for public schools and affordable housing, while also criticizing Bloomberg's 12-year tenure."
                        },
                        {
                            "type": "text",
                            "value": "He needs to win 40% to avoid an Oct. 1 runoff. Former city comptroller William Thompson, who lost to Bloomberg in 2009, and City Council Speaker Christine Quinn were at least 14 percentage points behind de Blasio in the final Quinnipiac Poll of likely Democratic voters released Monday."
                        },
                        {
                            "type": "text",
                            "value": "The Democratic nominee will face Republican Joe Lhota, a deputy mayor and budget director in Rudy Giuliani's administration, or John Catsimatidis, a grocery store magnate."
                        },
                        {
                            "type": "text",
                            "value": "Democrats outnumber Republicans in voter registration by 6 to 1, meaning the Democratic nominee will be the heavy favorite to become mayor of the nation's most-populous city. Despite the city's political tilt, a Democrat hasn't been elected mayor since David Dinkins defeated Ed Koch in 1989."
                        },
                        {
                            "type": "text",
                            "value": "Tuesday's outcome \"is all on the get-out-the-vote ... and field operations,\" said Doug Muzzio, a political scientist at Baruch College."
                        },
                        {
                            "type": "asset",
                            "value": "2790373"
                        },
                        {
                            "type": "text",
                            "value": "New York City voters will also decide the fate of a pair of disgraced Democrats, former congressman Anthony Weiner and ex-governor Eliot Spitzer, whose once-promising political careers were derailed by sex scandals. "
                        },
                        {
                            "type": "text",
                            "value": "Lee Miringoff, director of the Marist Institute for Public Opinion, said de Blasio's success can be attributed to timing, Weiner's demise and doubts about Quinn, who is vying to become the first woman and first openly gay mayor of New York City."
                        },
                        {
                            "type": "text",
                            "value": "Quinn has taken shots for supporting Bloomberg when he wanted to overturn the city's term limits law, which allowed the independent to run and win a third term. De Blasio, by contrast, was one of the loudest opponents to Bloomberg on term limits."
                        },
                        {
                            "type": "text",
                            "value": "De Blasio \"peaked at the right time,\" Miringoff said, noting that Bloomberg was \"hurtful to Quinn because of his association with her.\""
                        },
                        {
                            "type": "text",
                            "value": "There is also the \"Dante effect\" That's a reference to a campaign commercial featuring de Blasio's 15-year-old son, Dante, who bragged in the spot that his father is \"the only Democrat who has the guts to really break from the Bloomberg years.\""
                        },
                        {
                            "type": "text",
                            "value": "That ad was also the first time many New York City voters may have learned that de Blasio, who is white, is married to an African-American woman, Chirlane, and that the couple's two children are biracial. Dante has a sister, Chiara, an 18-year-old college student."
                        },
                        {
                            "type": "text",
                            "value": "Bloomberg told New York magazine that de Blasio was running a \"racist\" campaign, before clarifying that the public advocate was \"making an appeal using his family to gain support.\""
                        },
                        {
                            "type": "text",
                            "value": "\"Despite what Mayor Bloomberg said about Bill de Blasio, the ad with his son was masterful and caught people's attention,\" said Bruce Berg, a political scientist at Fordham University. \"That was a good ad for them.\""
                        },
                        {
                            "type": "text",
                            "value": "The circus-like nature of the mayor's race ended weeks ago as Weiner's support dropped because he acknowledged he sent salacious messages to women via the Internet as late as last year. The revelation that his sexting habits continued even after he resigned from Congress in 2011 effectively derailed his chances for mayor — a job Weiner has long coveted."
                        },
                        {
                            "type": "text",
                            "value": "Now, Weiner is running fourth behind de Blasio, Thompson and Quinn among the six major Democratic candidates.  John Liu, the city's current comptroller, and former council member Sal Albanese round out the Democratic field."
                        },
                        {
                            "type": "text",
                            "value": "In New York City's other high-profile primary, Spitzer and Manhattan Borough President Scott Stringer are vying for the Democratic nomination for city comptroller.  Stringer has been building momentum since Spitzer, who resigned in 2008 amid a prostitution scandal, stunned the political world in July that he would ask voters for \"forgiveness\" and run for comptroller."
                        },
                        {
                            "type": "text",
                            "value": "The Democratic nominee for comptroller, who serves as the city's auditor, will face Republican John Burnett in the fall. Burnett is a longtime wealth manager at Wall Street firms."
                        },
                        {
                            "type": "text",
                            "value": "Contributing: Martha T. Moore in New York"
                        },
                        {
                            "type": "text",
                            "value": "Follow @ccamia on Twitter. "
                        }
                    ],
                    "id": 2790319,
                    "type": "text",
                    "source": "USATODAY",
                    "metaData": {
                        "headline": "NYC voters go to polls in first round of mayor's race",
                        "shortHeadline": "NYC primary voters pick mayoral hopefuls",
                        "byline": "Catalina Camia, USA TODAY ",
                        "editedHeadline": null,
                        "storyabstract": "Can Bill de Blasio win the Democratic nomination for New York City mayor on Tuesday night? That's the overriding question as a fraction of the city's estimated 4.7 million voters go to the polls Tuesday to choose a Democratic and Republican nominee who will face off Nov. 5 to replace independent Michael Bloomberg. Polls close at 9 p.m. ET. De Blasio, the city's public advocate, surged in public opinion polls in recent weeks as he played up his plans for public schools and affordable housing, while also criticizing Bloomberg's 12-year tenure. He needs to win 40% to avoid an Oct. 1 runoff. Former city comptroller William Thompson, who lost to Bloomberg in 2009, and City Council Speaker Christine Quinn were at least 14 percentage points behind de Blasio in the final Quinnipiac Poll of likely Democratic voters released Monday.",
                        "brief": "Democrats could advance Bill de Blasio in NYC mayor's race and decide fate of Weiner, Spitzer.",
                        "storyhighlights": [
                            "Public Advocate Bill de Blasio had double-digit leads for Democratic nomination",
                            "Winner needs 40%25 to avoid Oct. 1 runoff",
                            "Primary voters also deciding fate of disgraced Democrats Anthony Weiner%2C Eliot Spitzer"
                        ],
                        "dates": {
                            "embargodate": "2013-09-10T09:57:41.796-04:00",
                            "feeddateline": "2013-09-10T09:57:41.796-04:00",
                            "published": "2013-09-10T10:00:57Z",
                            "lastupdated": "2013-09-10T13:57:42Z"
                        },
                        "ssts": {
                            "section": "news",
                            "subsection": "politics",
                            "topic": "",
                            "subtopic": "",
                            "storysubject": null
                        },
                        "series": "",
                        "urls": {
                            "longurl": "http://www.usatoday.com/story/news/politics/2013/09/10/de-blasio-new-york-mayor-democratic-primary/2790319/",
                            "shorturl": "http://usat.ly/1fSkGzd",
                            "mobileurl": "http://usat.ly/1fSkGzd"
                        },
                        "firstAsset": 2759093,
                        "appname": null,
                        "category": null,
                        "rating": null,
                        "developer": null,
                        "applink": null,
                        "promo_url": null,
                        "maturity": null,
                        "copyright": "Copyright 2013 USATODAY.com",
                        "breakingNewsId": 0,
                        "aws": "news/politics",
                        "topic": ""
                    },
                    "assets": [
                        {
                            "id": 2790373,
                            "position": 1,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": null,
                            "ssts": null,
                            "metaData": {
                                "items": {
                                    "oImageHeight": "3268",
                                    "oImageWidth": "4910",
                                    "sImageHeight": "332",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:manual;  3_4:manual;  16_9:manual;  9_16:manual;  front_thumb:manual;  ",
                                    "credit": "James Keivom, AP",
                                    "alternate": null,
                                    "title": "quinn-weiner",
                                    "caption": "Christine Quinn and Anthony Weiner at one time led polls for the Democratic nomination for New York City mayor.",
                                    "datephototaken": "8-13-2013",
                                    "cutline": "Christine Quinn and Anthony Weiner at one time led polls for the Democratic nomination for New York City mayor.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "quinn-weiner.jpg",
                                    "imgIndex": "1378768858000",
                                    "imgUniqueName": "1378768858000-quinn-weiner.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/test/2013/09/09/1378768858000-quinn-weiner.jpg",
                                    "smallbasename": "/-mm-/521cd80a4fb9f1f1edf37d025629b379daee5bba/r=500x332/local/-/media/USATODAY/test/2013/09/09/1378768858000-quinn-weiner.jpg",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/test/2013/09/09/1378768858000-quinn-weiner.jpg",
                                    "interactive": "false"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/f45897a76b7a90be099e082cc7cfb21b1b0939ad/c=0-374-2140-2519/local/-/media/USATODAY/test/2013/09/09/1378768858000-quinn-weiner.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/f247b8d752c6f7019c712a070ef2bcf68fa3aaf0/c=166-0-4507-3268/local/-/media/USATODAY/test/2013/09/09/1378768858000-quinn-weiner.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/fbdc3e58468814ffd218f27f9a5c1cbd31207969/c=2464-0-4910-3268/local/-/media/USATODAY/test/2013/09/09/1378768858000-quinn-weiner.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/5e23e152263bd714f9ae969f9d211083f81f48cd/c=0-196-4910-2972/local/-/media/USATODAY/test/2013/09/09/1378768858000-quinn-weiner.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/152c676af37c1759297d511a3add370fab232bcb/c=117-0-1944-3268/local/-/media/USATODAY/test/2013/09/09/1378768858000-quinn-weiner.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/998e29e7dbd35d83fea224c92bcf7b35ca9e1cbc/c=471-0-4281-3268/local/-/media/USATODAY/test/2013/09/09/1378768858000-quinn-weiner.jpg"
                                },
                                "document": null
                            }
                        },
                        {
                            "id": 2759093,
                            "position": 2,
                            "type": "image",
                            "status": "published",
                            "url": null,
                            "mobileUrl": "",
                            "ssts": {
                                "section": null,
                                "subsection": null,
                                "topic": null,
                                "subtopic": null,
                                "storysubject": null
                            },
                            "metaData": {
                                "items": {
                                    "oImageHeight": "2456",
                                    "oImageWidth": "3696",
                                    "sImageHeight": "332",
                                    "sImageWidth": "500",
                                    "imageCropStatus": "1_1:manual;  4_3:auto;  3_4:auto;  16_9:auto;  9_16:auto;  front_thumb:auto;  ",
                                    "credit": "Michael Loccisano, Getty Images",
                                    "alternate": null,
                                    "title": "Bill de Blasio",
                                    "caption": "New York City mayoral candidate Bill de Blasio campaigns at the West Indian Day Parade on Sept. 2 in Brooklyn.",
                                    "datephototaken": "9-2-2013",
                                    "cutline": "New York City mayoral candidate Bill de Blasio campaigns at the West Indian Day Parade on Sept. 2 in Brooklyn.",
                                    "orientation": "horizontal",
                                    "OrigImageName": "GTY 179378123.jpg",
                                    "imgIndex": "1378235851000",
                                    "imgUniqueName": "1378235851000-GTY-179378123.jpg",
                                    "isImageVisitedByUser": "True",
                                    "isAutoCroppedSetOn": "True",
                                    "publishurl": "http://www.gannett-cdn.com",
                                    "rootpath": null,
                                    "basename": "/media/USATODAY/onpolitics/2013/09/03/1378235851000-GTY-179378123.jpg",
                                    "smallbasename": "/-mm-/521cd80a4fb9f1f1edf37d025629b379daee5bba/r=500x332/local/-/media/USATODAY/onpolitics/2013/09/03/1378235851000-GTY-179378123.jpg",
                                    "keywords": "bill de blasio",
                                    "oImageUrl": "http://www.gannett-cdn.com/media/USATODAY/onpolitics/2013/09/03/1378235851000-GTY-179378123.jpg",
                                    "interactive": "false",
                                    "aws": "news"
                                },
                                "crops": {
                                    "1_1": "http://www.gannett-cdn.com/-mm-/b1a90dcd361889f438d555c020dedaefceb010ca/c=946-362-3038-2456/local/-/media/USATODAY/onpolitics/2013/09/03/1378235851000-GTY-179378123.jpg",
                                    "4_3": "http://www.gannett-cdn.com/-mm-/450c40907e434ac06269546c0532f7fb1821ea6d/c=0-0-3259-2456/local/-/media/USATODAY/onpolitics/2013/09/03/1378235851000-GTY-179378123.jpg",
                                    "3_4": "http://www.gannett-cdn.com/-mm-/14e4e2d36d25572fa9b8dbfec765e63c76037bfd/c=975-0-2816-2456/local/-/media/USATODAY/onpolitics/2013/09/03/1378235851000-GTY-179378123.jpg",
                                    "16_9": "http://www.gannett-cdn.com/-mm-/c55e603e821223bd062531fbd3e366f80e499111/c=0-310-3696-2396/local/-/media/USATODAY/onpolitics/2013/09/03/1378235851000-GTY-179378123.jpg",
                                    "9_16": "http://www.gannett-cdn.com/-mm-/152f3d0d6f1431c2a60a6fd2d950b287ae417770/c=1382-0-2757-2456/local/-/media/USATODAY/onpolitics/2013/09/03/1378235851000-GTY-179378123.jpg",
                                    "front_thumb": "http://www.gannett-cdn.com/-mm-/ce4366294b783adacaf875fdaea4859b4a348a65/c=347-192-2986-2456/local/-/media/USATODAY/onpolitics/2013/09/03/1378235851000-GTY-179378123.jpg"
                                },
                                "document": null
                            }
                        }
                    ]
                },
                {
                    "id": 2793929,
                    "position": 0,
                    "type": "video",
                    "status": "published",
                    "url": "http://www.usatoday.com/videos/money/markets/2013/09/10/2793929/",
                    "mobileUrl": "http://usat.ly/1fW1653",
                    "ssts": {
                        "section": "money",
                        "subsection": "markets",
                        "topic": "",
                        "subtopic": "",
                        "storysubject": null
                    },
                    "metaData": {
                        "items": {
                            "brightcoveid": "2662862644001",
                            "name": "Syria sinks gold prices",
                            "shortdescription": "The growing possibility that Syria avoids a US-led airstrike is sinking gold, Aurum Options Strategies' Tom Vitiello tells Joe Deaux.",
                            "tags": null,
                            "source": "Newslook",
                            "origin": "TheStreet",
                            "autoarchive": "true",
                            "adsenabled": "True",
                            "startdate": null,
                            "enddate": null,
                            "gannetttracking": "newslook:606971",
                            "longdescription": null,
                            "viraldistribution": "true",
                            "user": "mafowler",
                            "datecreated": "9/10/2013 1:56:32 PM",
                            "credit": "Newslook",
                            "propertyid": "1",
                            "brightcoveaccount": "29906170001",
                            "thumbnail": "http://www.gannett-cdn.com/-mm-/33d97f8a03d5ea06baca0f7a30eca34c8bd87643/r=500x281/local/-/media/USATODAY/USATODAY/2013/09/10/1378837488000-gold2.jpg",
                            "videostill": "http://www.gannett-cdn.com/media/USATODAY/USATODAY/2013/09/10/1378837488000-gold2.jpg",
                            "status": "complete",
                            "length": "02:49",
                            "imageid": "2794137",
                            "thumbnailTiny": "http://www.gannett-cdn.com/-mm-/0b83e590a7fed2fea2dab36f807d8aded24a733f/c=161-0-1118-720&r=115x86/local/-/media/USATODAY/USATODAY/2013/09/10/1378837488000-gold2.jpg",
                            "bcunfilteredtoken": null,
                            "bcreadtoken": null,
                            "bcwritetoken": null,
                            "excludemobile": "False",
                            "excluderightnow": "False",
                            "majorchange": "False",
                            "content-protection-state": "free",
                            "lastaction": "Published",
                            "interactive": "false",
                            "topic": "money_markets",
                            "aws": "money/markets"
                        },
                        "crops": {
                            "1_1": "http://www.gannett-cdn.com/-mm-/bddf1aab96f01d9ce5100cd936743c78e207bb18/c=281-0-1000-720/local/-/media/USATODAY/USATODAY/2013/09/10/1378837488000-gold2.jpg",
                            "4_3": "http://www.gannett-cdn.com/-mm-/ee6825ea5507f1c9dd11c1f9e7d3a80b52203735/c=161-0-1118-720/local/-/media/USATODAY/USATODAY/2013/09/10/1378837488000-gold2.jpg",
                            "3_4": "http://www.gannett-cdn.com/-mm-/b6567d040b0f071f647fc273c02881c2655544e6/c=401-0-942-720/local/-/media/USATODAY/USATODAY/2013/09/10/1378837488000-gold2.jpg",
                            "16_9": "http://www.gannett-cdn.com/-mm-/93cf5a2e4cb9b2c94f12337f9f5d103d463459f7/c=5-0-1277-720/local/-/media/USATODAY/USATODAY/2013/09/10/1378837488000-gold2.jpg",
                            "9_16": "http://www.gannett-cdn.com/-mm-/d23ce8919d6eb960949bd8afa84e7b10d53f8f00/c=450-0-852-720/local/-/media/USATODAY/USATODAY/2013/09/10/1378837488000-gold2.jpg",
                            "front_thumb": "http://www.gannett-cdn.com/-mm-/f48e073fe593004056f666a3e4a3965c43fca077/c=197-0-1039-720/local/-/media/USATODAY/USATODAY/2013/09/10/1378837488000-gold2.jpg"
                        },
                        "document": null
                    }
                },
                {
                    "id": 2789861,
                    "position": 0,
                    "type": "video",
                    "status": "published",
                    "url": "http://www.usatoday.com/videos/news/nation/2013/09/09/2789861/",
                    "mobileUrl": "http://usat.ly/1fS2Qfu",
                    "ssts": {
                        "section": "news",
                        "subsection": "nation",
                        "topic": "",
                        "subtopic": "",
                        "storysubject": null
                    },
                    "metaData": {
                        "items": {
                            "brightcoveid": "2660435175001",
                            "origin": "1",
                            "viraldistribution": "true",
                            "autoarchive": "true",
                            "adsenabled": "True",
                            "propertyid": "1",
                            "brightcoveaccount": "29906170001",
                            "datecreated": "9/9/2013 5:44:03 PM",
                            "user": "adastagir",
                            "status": "complete",
                            "name": "Listen: Shellie Zimmerman's dramatic 911 call",
                            "shortdescription": "Police were called to a home in Lake Mary on Monday after George Zimmerman allegedly threatened his wife and her father with a gun. Lake Mary, Florida Police Department released Shellie Zimmerman's call to 911.",
                            "tags": "vpcbest,newsbest,george zimmerman,911 call,vpc,National News,Florida,Lake Mary,shellie zimmerman",
                            "thumbnail": "http://bc_gvpc.edgesuite.net/img/963482463001/201309/710/963482463001_2660439746001_th-522e3e74e4b0ae5c81b60bf9-767904724001.jpg?pubId=963482463001",
                            "videostill": "http://bc_gvpc.edgesuite.net/img/963482463001/201309/3710/963482463001_2660439745001_vs-522e3e74e4b0ae5c81b60bf9-767904724001.jpg?pubId=963482463001",
                            "startdate": null,
                            "enddate": null,
                            "length": "05:15",
                            "credit": null,
                            "excludemobile": "False",
                            "excluderightnow": "False",
                            "majorchange": "False",
                            "content-protection-state": "free",
                            "lastaction": "Published",
                            "interactive": "false",
                            "topic": "news,news_nation",
                            "aws": "news/national"
                        },
                        "crops": null,
                        "document": null
                    }
                },
                {
                    "id": 2794447,
                    "position": 0,
                    "type": "video",
                    "status": "published",
                    "url": "http://www.usatoday.com/videos/life/tv/2013/09/10/2794447/",
                    "mobileUrl": "http://usat.ly/1fWgu16",
                    "ssts": {
                        "section": "life",
                        "subsection": "tv",
                        "topic": "",
                        "subtopic": "",
                        "storysubject": null
                    },
                    "metaData": {
                        "items": {
                            "brightcoveid": "2662928703001",
                            "name": "'Breaking Bad' fan sues Apple over split 5th season",
                            "shortdescription": "Tech company Apple is being hit with a class-action lawsuit by a fan of AMC's hit show 'Breaking Bad.' The fan is accusing Apple's iTunes of charging separately for the final eight episodes of the show, when the season pass was billed as the full 16",
                            "tags": null,
                            "source": "Newslook",
                            "origin": "Buzz60",
                            "autoarchive": "true",
                            "adsenabled": "True",
                            "startdate": null,
                            "enddate": null,
                            "gannetttracking": "newslook:607003",
                            "longdescription": null,
                            "viraldistribution": "true",
                            "user": "mafowler",
                            "datecreated": "9/10/2013 3:01:32 PM",
                            "credit": "Newslook",
                            "propertyid": "1",
                            "brightcoveaccount": "29906170001",
                            "thumbnail": "http://videos.usatoday.net/Brightcove2/29906170001/2013/09/29906170001_2663032072001_thumb-607003.jpg?pubId=29906170001",
                            "videostill": "http://videos.usatoday.net/Brightcove2/29906170001/2013/09/29906170001_2663032072001_thumb-607003.jpg?pubId=29906170001",
                            "status": "complete",
                            "length": "01:04",
                            "excludemobile": "False",
                            "excluderightnow": "False",
                            "majorchange": "False",
                            "content-protection-state": "free",
                            "lastaction": "Published",
                            "interactive": "false",
                            "topic": "life_tv",
                            "aws": "entertainment/television"
                        },
                        "crops": null,
                        "document": null
                    }
                },
                {
                    "id": 1411301,
                    "position": 0,
                    "type": "gallery",
                    "status": "published",
                    "url": "http://www.usatoday.com/picture-gallery/life/people/2013/04/25/day-in-celebrities/1411301/",
                    "mobileUrl": "http://usat.ly/NVORxH",
                    "ssts": {
                        "section": "life",
                        "subsection": "people",
                        "topic": "",
                        "subtopic": "",
                        "storysubject": ""
                    },
                    "metaData": {
                        "items": {
                            "name": "Day In Celebrities",
                            "thumbnailPath": "/-mm-/41cf61181267b1562e2dff4e557c9bf5c91d51ac/r=500x337/local/-/media/USATODAY/USATODAY/2013/09/10/1378821438000-01-tiff-august-roberts.jpg",
                            "thumbnailAssetId": "2791887",
                            "thumbnailLock": "True",
                            "gallerySstsPublishLocation": "life/people",
                            "suppressVideoPreroll": "False",
                            "galleryType": "Standard",
                            "seoName": "day-in-celebrities",
                            "excludemobile": "False",
                            "noadvertising": "False",
                            "lastaction": "published",
                            "editor": "jwilson",
                            "thumbnailTiny": "/-mm-/4f7c7e897c4022418271c4e70a0e55070b264ff3/c=100-89-2610-1976&r=115x86/local/-/media/USATODAY/USATODAY/2013/09/10/1378821438000-01-tiff-august-roberts.jpg",
                            "slidecount": "30",
                            "interactive": "false",
                            "topic": "life_people,life",
                            "aws": "entertainment/celebrity"
                        },
                        "crops": {
                            "1_1": "http://www.gannett-cdn.com/-mm-/980fa8ef99c6d28883bc91fc87a84d3f35341c43/c=486-29-2450-1994/local/-/media/USATODAY/USATODAY/2013/09/10/1378821438000-01-tiff-august-roberts.jpg",
                            "4_3": "http://www.gannett-cdn.com/-mm-/93c0198e7df575f9cc96f50201e1fbd4947c38e9/c=100-89-2610-1976/local/-/media/USATODAY/USATODAY/2013/09/10/1378821438000-01-tiff-august-roberts.jpg",
                            "3_4": "http://www.gannett-cdn.com/-mm-/bfb6fd4d78f747032243296012d513e795f37056/c=646-41-2112-1994/local/-/media/USATODAY/USATODAY/2013/09/10/1378821438000-01-tiff-august-roberts.jpg",
                            "16_9": "http://www.gannett-cdn.com/-mm-/e056a94e47e1d5a1b119a9fc0129a4f5099f4fd9/c=623-100-2498-1163/local/-/media/USATODAY/USATODAY/2013/09/10/1378821438000-01-tiff-august-roberts.jpg",
                            "9_16": "http://www.gannett-cdn.com/-mm-/34387e4c369b7796fb927063b059b84e7127379f/c=913-53-1999-1994/local/-/media/USATODAY/USATODAY/2013/09/10/1378821438000-01-tiff-august-roberts.jpg",
                            "front_thumb": "http://www.gannett-cdn.com/-mm-/ab7b87256ced0c990e81c2270098172841ac9abf/c=985-124-1798-818/local/-/media/USATODAY/USATODAY/2013/09/10/1378821438000-01-tiff-august-roberts.jpg"
                        },
                        "document": null
                    }
                },
                {
                    "id": 1410095,
                    "position": 0,
                    "type": "gallery",
                    "status": "published",
                    "url": "http://www.usatoday.com/picture-gallery/news/2013/06/04/day-in-pictures/1410095/",
                    "mobileUrl": "http://usat.ly/RMlexQ",
                    "ssts": {
                        "section": "news",
                        "subsection": "",
                        "topic": "",
                        "subtopic": "",
                        "storysubject": ""
                    },
                    "metaData": {
                        "items": {
                            "name": "Day in Pictures",
                            "thumbnailPath": "/-mm-/8ad2122bfa4e455375f01de0acc902272150a49c/r=500x313/local/-/media/USATODAY/USATODAY/2013/09/10/1378826020007-day091013-008.jpg",
                            "thumbnailAssetId": "2792379",
                            "thumbnailLock": "True",
                            "gallerySstsPublishLocation": "news",
                            "suppressVideoPreroll": "False",
                            "galleryType": "Standard",
                            "seoName": "day-in-pictures",
                            "excludemobile": "False",
                            "noadvertising": "False",
                            "lastaction": "Published",
                            "editor": "mtsukamo",
                            "thumbnailTiny": "/-mm-/7816b7726ba7e779c7e862a22a35e1ce7f202a9c/c=49-16-1734-1287&r=115x86/local/-/media/USATODAY/USATODAY/2013/09/10/1378826020007-day091013-008.jpg",
                            "slidecount": "10",
                            "interactive": "false",
                            "topic": "news_nation,news_world",
                            "aws": "news"
                        },
                        "crops": {
                            "1_1": "http://www.gannett-cdn.com/-mm-/f89946b7bef74f565ea9a2c3d350d7d318753f96/c=537-12-1886-1364/local/-/media/USATODAY/USATODAY/2013/09/10/1378826020002-day091013-003.jpg",
                            "4_3": "http://www.gannett-cdn.com/-mm-/34284b556c370c5f6f4bcde8cf873449ec9f2da3/c=274-28-2050-1364/local/-/media/USATODAY/USATODAY/2013/09/10/1378826020002-day091013-003.jpg",
                            "3_4": "http://www.gannett-cdn.com/-mm-/aedf82404cf540f11e57a1d97ebd27dc2a79fae9/c=483-28-1484-1364/local/-/media/USATODAY/USATODAY/2013/09/10/1378826020002-day091013-003.jpg",
                            "16_9": "http://www.gannett-cdn.com/-mm-/f6d1532beac35ad53e11a7e059bf8a1ddd23016a/c=28-32-2050-1175/local/-/media/USATODAY/USATODAY/2013/09/10/1378826020002-day091013-003.jpg",
                            "9_16": "http://www.gannett-cdn.com/-mm-/99e257872286087b9c3c1e6da53d1eb08ebf7931/c=1156-32-1902-1364/local/-/media/USATODAY/USATODAY/2013/09/10/1378826020002-day091013-003.jpg",
                            "front_thumb": "http://www.gannett-cdn.com/-mm-/ef8b00cef57a51752a15d9b320e864bf3d1f2846/c=569-82-1914-1232/local/-/media/USATODAY/USATODAY/2013/09/10/1378826020002-day091013-003.jpg"
                        },
                        "document": null
                    }
                },
                {
                    "id": 2787761,
                    "position": 0,
                    "type": "gallery",
                    "status": "published",
                    "url": null,
                    "mobileUrl": "",
                    "ssts": {
                        "section": "sports",
                        "subsection": "tennis",
                        "topic": "",
                        "subtopic": "",
                        "storysubject": null
                    },
                    "metaData": {
                        "items": {
                            "name": "U.S. Open men's final",
                            "thumbnailPath": "/-mm-/50117b4bfe181f32492ec4d414638d7c08e560e6/r=500x400/local/-/media/USATODAY/USATODAY/2013/09/09/1378774929000-2013-09-09-mens-final-us-open-nadal-grip-trophy.jpg",
                            "thumbnailAssetId": "2790829",
                            "thumbnailLock": "False",
                            "gallerySstsPublishLocation": "sports/tennis",
                            "suppressVideoPreroll": "False",
                            "galleryType": "Standard",
                            "seoName": "us-open-mens-final",
                            "excludemobile": "False",
                            "noadvertising": "False",
                            "lastaction": "New",
                            "content-protection-state": "free",
                            "editor": "rcherner",
                            "slidecount": "63",
                            "interactive": "false",
                            "topic": "sports,sports_tennis",
                            "aws": "sports/tennis"
                        },
                        "crops": {
                            "1_1": "http://www.gannett-cdn.com/-mm-/7639d0b8611325cc8db832b8d817958571da7521/c=105-0-945-861/local/-/media/USATODAY/USATODAY/2013/09/09/1378774929000-2013-09-09-mens-final-us-open-nadal-grip-trophy.jpg",
                            "4_3": "http://www.gannett-cdn.com/-mm-/9c06f04357f153c0488af2c0ec22f1b9751ed891/c=0-25-1050-835/local/-/media/USATODAY/USATODAY/2013/09/09/1378774929000-2013-09-09-mens-final-us-open-nadal-grip-trophy.jpg",
                            "3_4": "http://www.gannett-cdn.com/-mm-/1f23b897f802d830cb3fbd5b504a62d9a84725cb/c=210-0-840-861/local/-/media/USATODAY/USATODAY/2013/09/09/1378774929000-2013-09-09-mens-final-us-open-nadal-grip-trophy.jpg",
                            "16_9": "http://www.gannett-cdn.com/-mm-/c090ea3475c21f081f876402094310f03c2e77a4/c=0-126-1050-734/local/-/media/USATODAY/USATODAY/2013/09/09/1378774929000-2013-09-09-mens-final-us-open-nadal-grip-trophy.jpg",
                            "9_16": "http://www.gannett-cdn.com/-mm-/3b519113710eb4e1d7805b43691c2c9141d36f30/c=289-0-760-861/local/-/media/USATODAY/USATODAY/2013/09/09/1378774929000-2013-09-09-mens-final-us-open-nadal-grip-trophy.jpg",
                            "front_thumb": "http://www.gannett-cdn.com/-mm-/7c3e392da9a7be0defe68862bc3c770968f5759f/c=33-0-1016-861/local/-/media/USATODAY/USATODAY/2013/09/09/1378774929000-2013-09-09-mens-final-us-open-nadal-grip-trophy.jpg"
                        },
                        "document": null
                    }
                }
            ]
        },
        "AdOverride": {
            "attributes": {
                "name": "Content List",
                "displayName": "AdOverride",
                "position": "1"
            },
            "content": []
        }
    }
}
JSON

file = File.open("#{Dir.pwd}/spec/Notices.xml", "rb")
NOTICES_XML_COLLECTION = DataMapper::Ext::String.compress_lines( file.read )
file.close

DNBDIRECT_JSON_COLLECTION = <<-JSON
{
    "navigators": {
        "locationNavigators": null,
        "industryNavigators": null,
        "employeeNavigators": null,
        "locationTypeNavigators": null,
        "ownershipTypeNavigators": null,
        "salesNavigators": null
    },
    "resultSet": {
        "hit": [
            {
                "companyResults": {
                    "country": "ea idtntUseStbzW",
                    "city": "insutApPp",
                    "sales": 62552930,
                    "locationType": "drsauHqtaeeroRp",
                    "countryId": 53013,
                    "parentDuns": "146148890D62",
                    "ultimateParentDuns": "881061494spT",
                    "postalCode": null,
                    "familyTreeSize": 131542,
                    "address1": "ro5 rBi0l0d.tA pv8Rop",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": ".ohrtwwop/t:ecvowshm/.1LW",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "TX6cq",
                    "historicalIndicator": false,
                    "doNotCallRegistry": false,
                    "hqPhone": "-5341405207-sMw",
                    "companyId": 30016434787199868,
                    "companyName": "so ,'cI.ornHvetKH",
                    "duns": "118861264b4o"
                },
                "hitNumber": 1
            },
            {
                "companyResults": {
                    "country": "aSt tstUndeieZUg",
                    "city": "snAtiuHuV",
                    "sales": 251900.7,
                    "locationType": "aurHreadqstesqt",
                    "countryId": 52189,
                    "parentDuns": "04916848111w",
                    "ultimateParentDuns": "841180694 mj",
                    "postalCode": null,
                    "familyTreeSize": 546991,
                    "address1": "t5poBv 0r. 8ri0Adl851",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": ".esoh.:/wtrm/wwochvtopnnT",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "XTl8H",
                    "historicalIndicator": true,
                    "doNotCallRegistry": true,
                    "hqPhone": "0435--021547YO2",
                    "companyId": 50837042350824584,
                    "companyName": "e'r,ovnocIHs .z 5",
                    "duns": "181166284pOz"
                },
                "hitNumber": 2
            },
            {
                "companyResults": {
                    "country": "d eUinettsSatcBY",
                    "city": "tHihSlsl rokFO",
                    "sales": 240.74373,
                    "locationType": "qsrateHearudwlF",
                    "countryId": 14781,
                    "parentDuns": "891801644LpC",
                    "ultimateParentDuns": "988414601N8B",
                    "postalCode": null,
                    "familyTreeSize": 356781,
                    "address1": ".fJ1wk 0yk3P 6ry",
                    "exchanges": [
                        {
                            "tickerSymbol": "DN Bo K",
                            "exchangeName": "ESNY0a3"
                        },
                        {
                            "tickerSymbol": "DB 5di7",
                            "exchangeName": "DfsodlsureyUQ"
                        },
                        {
                            "tickerSymbol": " DBNFA9",
                            "exchangeName": "SQNTDAACA Idj"
                        },
                        {
                            "tickerSymbol": "DBN pLh",
                            "exchangeName": "XBXM OfeC"
                        },
                        {
                            "tickerSymbol": "NDB 4VV",
                            "exchangeName": "DASA2 QNyk5"
                        },
                        {
                            "tickerSymbol": "ND BeV2",
                            "exchangeName": "egrit ecEAd DUQz"
                        },
                        {
                            "tickerSymbol": "NDB gRZ",
                            "exchangeName": " ocionfltoi aNahCga2Ed"
                        },
                        {
                            "tickerSymbol": "ND BqkD",
                            "exchangeName": "MXXP SOR6g"
                        },
                        {
                            "tickerSymbol": " BNDj1z",
                            "exchangeName": "SYrN aAcED5Z"
                        },
                        {
                            "tickerSymbol": "5BD WPD",
                            "exchangeName": "MciunhABk"
                        },
                        {
                            "tickerSymbol": "BDNQjU",
                            "exchangeName": "opCioOcagnhs ti6ve"
                        }
                    ],
                    "dbas": {
                        "dba": [
                            "B&DeLw"
                        ]
                    },
                    "primaryUrl": "dc/m.:p/twnbwhwot.ZEG",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "JN5Um",
                    "historicalIndicator": false,
                    "doNotCallRegistry": false,
                    "hqPhone": "7301505-9-92eyd",
                    "companyId": 73458872807592340,
                    "companyName": "nrdhtoBtD TC&nas ierae oroturep SVZ",
                    "duns": "981814064d7R"
                },
                "hitNumber": 3
            },
            {
                "companyResults": {
                    "country": "easdSitUtt enmNt",
                    "city": "CmuimgnzSl",
                    "sales": 2071.816,
                    "locationType": "rqudHteaeasrZ5e",
                    "countryId": 37901,
                    "parentDuns": "313732147STi",
                    "ultimateParentDuns": "4241076582eV",
                    "postalCode": null,
                    "familyTreeSize": 6721453,
                    "address1": "P20n l2 Rd0eyed OE",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "sirpttcowvrc.hinmpohoewe/:o.w/ZiM",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "GAtaZ",
                    "historicalIndicator": true,
                    "doNotCallRegistry": false,
                    "hqPhone": "89-72803729-8g4",
                    "companyId": 84113408335335280,
                    "companyName": "ucornocHI rons i.oePPsviecr dtD9j",
                    "duns": "103005746KnD"
                },
                "hitNumber": 4
            },
            {
                "companyResults": {
                    "country": "snUd atSeitetKye",
                    "city": "rodBannpGa",
                    "sales": null,
                    "locationType": "eadrHusraeqtTTj",
                    "countryId": 60190,
                    "parentDuns": "817796692TMd",
                    "ultimateParentDuns": "699682177gVP",
                    "postalCode": null,
                    "familyTreeSize": 3455,
                    "address1": "S45 152tht 488X7E",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "5rB",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "SDDs1",
                    "historicalIndicator": false,
                    "doNotCallRegistry": false,
                    "hqPhone": "506-22850-18VOw",
                    "companyId": 366586623932,
                    "companyName": "ootl aetreBHBsaam eldAcck  vAFqr",
                    "duns": "796672189QCR"
                },
                "hitNumber": 5
            },
            {
                "companyResults": {
                    "country": "tlh neNehaTesdrGc9",
                    "city": "Eveohndnirwt",
                    "sales": null,
                    "locationType": "aqetuersHrdaisL",
                    "countryId": 84596,
                    "parentDuns": "409764549gOU",
                    "ultimateParentDuns": "5946704946j5",
                    "postalCode": null,
                    "familyTreeSize": 9038,
                    "address1": "aHt0sr2 a5toog7qb",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "gvJ",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "nrdNotoraaB-bBdd",
                    "historicalIndicator": true,
                    "doNotCallRegistry": false,
                    "hqPhone": "8030490293S3",
                    "companyId": 386544606450,
                    "companyName": "rreere e.vencBliove.oPsVo SHs UPa",
                    "duns": "714012614seY"
                },
                "hitNumber": 6
            },
            {
                "companyResults": {
                    "country": "nUSetsdiaet tfO8",
                    "city": "wttOamueSC",
                    "sales": 4101.7,
                    "locationType": "n oSaogeiLtnlciPqU",
                    "countryId": 67973,
                    "parentDuns": null,
                    "ultimateParentDuns": null,
                    "postalCode": null,
                    "familyTreeSize": null,
                    "address1": "Sa2 rH1d06tig nzTD",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "L3u",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "IA3ts",
                    "historicalIndicator": true,
                    "doNotCallRegistry": true,
                    "hqPhone": "62246-3-8114sAh",
                    "companyId": 500379830576,
                    "companyName": "HeirvoeTrs odbO",
                    "duns": "574898524JsW"
                },
                "hitNumber": 7
            },
            {
                "companyResults": {
                    "country": "UdenistSa tetsqp",
                    "city": "ontdiMewdlZpn",
                    "sales": 633730,
                    "locationType": "enaogciot SinLlSta",
                    "countryId": 92507,
                    "parentDuns": null,
                    "ultimateParentDuns": null,
                    "postalCode": null,
                    "familyTreeSize": null,
                    "address1": "4m232 Wnnhit aLia0",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "aJ5",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "PAanv",
                    "historicalIndicator": true,
                    "doNotCallRegistry": false,
                    "hqPhone": "8--117790349nul",
                    "companyId": 44733795096,
                    "companyName": "erciv Hee SeorsrevoTUKc",
                    "duns": "709091094mO7"
                },
                "hitNumber": 8
            },
            {
                "companyResults": {
                    "country": "aSnttetse iUdeSn",
                    "city": "eBdrfdoZgy",
                    "sales": 447.9,
                    "locationType": "eSLogcoit nlnaicmH",
                    "countryId": 48003,
                    "parentDuns": null,
                    "ultimateParentDuns": null,
                    "postalCode": null,
                    "familyTreeSize": null,
                    "address1": "S34  t0NwHd",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "8Hv",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "INqwN",
                    "historicalIndicator": true,
                    "doNotCallRegistry": true,
                    "hqPhone": "281147--2779T2V",
                    "companyId": 14198130104,
                    "companyName": "yo encoSa tCHvndr orIseYdJ",
                    "duns": "339093088snB"
                },
                "hitNumber": 9
            },
            {
                "companyResults": {
                    "country": "nsettdSe tiUaMYU",
                    "city": "Art iMnyuoNVI",
                    "sales": 518660,
                    "locationType": "aS lLgoieotcninBLj",
                    "countryId": 95858,
                    "parentDuns": null,
                    "ultimateParentDuns": null,
                    "postalCode": null,
                    "familyTreeSize": null,
                    "address1": "  RkdBd1do24rac0XkF",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": " rf",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "MD8EQ",
                    "historicalIndicator": false,
                    "doNotCallRegistry": false,
                    "hqPhone": "453-5604610-EIa",
                    "companyId": 530378015887,
                    "companyName": "suHoerR &Avritoe  soaspG F",
                    "duns": "215149533YUJ"
                },
                "hitNumber": 10
            },
            {
                "companyResults": {
                    "country": "rnTeeN hastldhebmh",
                    "city": "noEdehinvC0L",
                    "sales": 34883126.99,
                    "locationType": "tSiie olgcnaLnoNBX",
                    "countryId": 26173,
                    "parentDuns": null,
                    "ultimateParentDuns": null,
                    "postalCode": null,
                    "familyTreeSize": null,
                    "address1": "oa2o5s0ttrga H8d7",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "yj9",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "thw",
                    "historicalIndicator": true,
                    "doNotCallRegistry": true,
                    "hqPhone": "990408023SSa",
                    "companyId": 586382937596,
                    "companyName": "PrFoSv.O eiv eso.e VerescnolHre.qco",
                    "duns": "386768303rBM"
                },
                "hitNumber": 11
            },
            {
                "companyResults": {
                    "country": "nadse eitStUt79i",
                    "city": "noyBr7Qs",
                    "sales": 45640,
                    "locationType": "cnotlniLaiSeg oUdM",
                    "countryId": 68866,
                    "parentDuns": null,
                    "ultimateParentDuns": null,
                    "postalCode": null,
                    "familyTreeSize": null,
                    "address1": "6o1a4wd 0rkDo 1OBcr",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "TxD",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "IMjdU",
                    "historicalIndicator": true,
                    "doNotCallRegistry": false,
                    "hqPhone": "28--06261075XUp",
                    "companyId": 135303989885,
                    "companyName": "iSaow oHeLvvrse nerc 85",
                    "duns": "411367237dcL"
                },
                "hitNumber": 12
            },
            {
                "companyResults": {
                    "country": "dsStUaei etntmVW",
                    "city": "elellevBli925",
                    "sales": 93558,
                    "locationType": "cnLinooatgeSli du9",
                    "countryId": 30879,
                    "parentDuns": null,
                    "ultimateParentDuns": null,
                    "postalCode": null,
                    "familyTreeSize": null,
                    "address1": "at2t e tSS6cgi",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "cIE",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "AP I3",
                    "historicalIndicator": true,
                    "doNotCallRegistry": true,
                    "hqPhone": "83-259-13773jJm",
                    "companyId": 871498037315,
                    "companyName": "ooHoM'sneau tGvdoi rsno 7r",
                    "duns": "564241308TWm"
                },
                "hitNumber": 13
            },
            {
                "companyResults": {
                    "country": "SaentiettdUs g88",
                    "city": "hna rciaRrogBn0G7",
                    "sales": 97606,
                    "locationType": "ctSolagni noiLeuNo",
                    "countryId": 46767,
                    "parentDuns": null,
                    "ultimateParentDuns": null,
                    "postalCode": null,
                    "familyTreeSize": null,
                    "address1": "allynSo  Rt3h9dwH 6o0bq",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "yAB",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "AP3Wa",
                    "historicalIndicator": false,
                    "doNotCallRegistry": false,
                    "hqPhone": "7365--301174sVU",
                    "companyId": 907777049953,
                    "companyName": "Soeerwerhci svaetiWsHhvo tGy",
                    "duns": "8058072313fa"
                },
                "hitNumber": 14
            },
            {
                "companyResults": {
                    "country": "etstniS ateUd2Qr",
                    "city": "uMcnei6H7",
                    "sales": 11.01,
                    "locationType": " ooieltgncnSiLaCJU",
                    "countryId": 46214,
                    "parentDuns": null,
                    "ultimateParentDuns": null,
                    "postalCode": null,
                    "familyTreeSize": null,
                    "address1": " 00deo0#N5 9R 4w0  NbS5J",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "IF2",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "INQmI",
                    "historicalIndicator": false,
                    "doNotCallRegistry": true,
                    "hqPhone": "726880-8652-s0x",
                    "companyId": 33998144939,
                    "companyName": "erv Pv FoL oeoHrotesyNL",
                    "duns": "322832090BMA"
                },
                "hitNumber": 15
            },
            {
                "companyResults": {
                    "country": "sS Ueietadtnt4ra",
                    "city": "uotnFl4uW",
                    "sales": 8126,
                    "locationType": "gSLtoainocni le8l1",
                    "countryId": 44271,
                    "parentDuns": null,
                    "ultimateParentDuns": null,
                    "postalCode": null,
                    "familyTreeSize": null,
                    "address1": "S Bu22 ltNff14 FmU",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "mca",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "OMn8I",
                    "historicalIndicator": false,
                    "doNotCallRegistry": true,
                    "hqPhone": "5-6241072-30g7q",
                    "companyId": 92002520088,
                    "companyName": "soaoreargv eHGzEJ",
                    "duns": "611928650ggq"
                },
                "hitNumber": 16
            },
            {
                "companyResults": {
                    "country": "f7J",
                    "city": "NlB",
                    "sales": 303.28,
                    "locationType": "gioLStinoca len3X5",
                    "countryId": null,
                    "parentDuns": null,
                    "ultimateParentDuns": null,
                    "postalCode": null,
                    "familyTreeSize": null,
                    "address1": "W1g",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "U2h",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "Mdk",
                    "historicalIndicator": false,
                    "doNotCallRegistry": false,
                    "hqPhone": "88924-608-93SiS",
                    "companyId": 566782413990,
                    "companyName": "doHvgeesiWrnl ooUl",
                    "duns": "7218269724xM"
                },
                "hitNumber": 17
            },
            {
                "companyResults": {
                    "country": "S sneetidUtatjOg",
                    "city": "ohbeAosrdiZ",
                    "sales": 39700,
                    "locationType": "noeoSLlci inagtOE2",
                    "countryId": 41800,
                    "parentDuns": null,
                    "ultimateParentDuns": null,
                    "postalCode": null,
                    "familyTreeSize": null,
                    "address1": "r3 9RoMo6 ed1RCX",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "U3z",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "NCxJw",
                    "historicalIndicator": false,
                    "doNotCallRegistry": true,
                    "hqPhone": "-6325966-365Mr2",
                    "companyId": 589166979464,
                    "companyName": "onMyasoo evrrHsNo8",
                    "duns": "173621263lLP"
                },
                "hitNumber": 18
            },
            {
                "companyResults": {
                    "country": "eitUn SadtsteLgg",
                    "city": "noeDtnsFM",
                    "sales": 679.5,
                    "locationType": " incieotlgaoLSnUCM",
                    "countryId": 41783,
                    "parentDuns": null,
                    "ultimateParentDuns": null,
                    "postalCode": null,
                    "familyTreeSize": null,
                    "address1": " dkk3oCs5rneJeR99ca  Tnk",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "DfL",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "NCnOb",
                    "historicalIndicator": true,
                    "doNotCallRegistry": true,
                    "hqPhone": "73465252-31-Czp",
                    "companyId": 631839682294,
                    "companyName": "snrshrlyvvoG aHCh eee Weucroou41",
                    "duns": "605086335HkC"
                },
                "hitNumber": 19
            },
            {
                "companyResults": {
                    "country": "tsaitet ndSeUlz2",
                    "city": "aVrneWt sZf",
                    "sales": 3631.1,
                    "locationType": "Sn Lgnaeiolcito1LX",
                    "countryId": 13278,
                    "parentDuns": null,
                    "ultimateParentDuns": null,
                    "postalCode": null,
                    "familyTreeSize": null,
                    "address1": "sr8CeetrRano25i7d n  rHgCc",
                    "exchanges": [],
                    "dbas": {
                        "dba": []
                    },
                    "primaryUrl": "w.olioowcmvnafgweloc.vyltR",
                    "nonMarketableCompany": null,
                    "stateOrProvince": "OHMUh",
                    "historicalIndicator": true,
                    "doNotCallRegistry": true,
                    "hqPhone": "91994-71-425w3R",
                    "companyId": 230613002083,
                    "companyName": "varsrge HeaooGKBX",
                    "duns": "895672497Gso"
                },
                "hitNumber": 20
            }
        ],
        "hits": 20,
        "totalHits": 185,
        "firstHit": 1,
        "lastHit": 20
    }
}
JSON
