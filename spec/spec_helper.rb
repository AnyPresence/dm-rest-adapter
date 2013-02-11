require 'rubygems'
require 'pathname'
require 'dm-validations'

# Support running specs with 'rake spec' and 'spec'
$LOAD_PATH.unshift('lib') unless $LOAD_PATH.include?('lib')

require 'dm-rest-adapter'

DataMapper.setup(:default, {
  :adapter => :rest,
  :host => "localhost",
  :port => 4000,
  :format => "json"
})

ROOT = Pathname(__FILE__).dirname.parent

Pathname.glob((ROOT + 'spec/fixtures/**/*.rb').to_s).each { |file| require file }
Pathname.glob((ROOT + 'spec/**/shared/**/*.rb').to_s).each { |file| require file }

DataMapper.finalize


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
		"date":"10:00 PM EST",
		"forecastday":
		{
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
		"txt_forecast": {
		"date":"10:00 PM EST",
		"forecastdays": [
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
		]
		},
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