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

file = File.open("#{Dir.pwd}/spec/Notices.xml", "rb")
NOTICES_XML_COLLECTION = DataMapper::Ext::String.compress_lines( file.read )
file.close