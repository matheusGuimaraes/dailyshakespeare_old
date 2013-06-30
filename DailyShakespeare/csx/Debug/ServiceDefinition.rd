<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="DailyShakespeare" generation="1" functional="0" release="0" Id="6def06b7-a1fb-4599-b179-25147a584fd3" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="DailyShakespeareGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="DailyShakespeare.DataService:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/DailyShakespeare/DailyShakespeareGroup/LB:DailyShakespeare.DataService:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="DailyShakespeare.WebSite:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/DailyShakespeare/DailyShakespeareGroup/LB:DailyShakespeare.WebSite:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="DailyShakespeare.DataService:DailyShakespeare" defaultValue="">
          <maps>
            <mapMoniker name="/DailyShakespeare/DailyShakespeareGroup/MapDailyShakespeare.DataService:DailyShakespeare" />
          </maps>
        </aCS>
        <aCS name="DailyShakespeare.DataService:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/DailyShakespeare/DailyShakespeareGroup/MapDailyShakespeare.DataService:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="DailyShakespeare.DataServiceInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/DailyShakespeare/DailyShakespeareGroup/MapDailyShakespeare.DataServiceInstances" />
          </maps>
        </aCS>
        <aCS name="DailyShakespeare.WebSite:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/DailyShakespeare/DailyShakespeareGroup/MapDailyShakespeare.WebSite:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="DailyShakespeare.WebSiteInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/DailyShakespeare/DailyShakespeareGroup/MapDailyShakespeare.WebSiteInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:DailyShakespeare.DataService:Endpoint1">
          <toPorts>
            <inPortMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.DataService/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:DailyShakespeare.WebSite:Endpoint1">
          <toPorts>
            <inPortMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.WebSite/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapDailyShakespeare.DataService:DailyShakespeare" kind="Identity">
          <setting>
            <aCSMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.DataService/DailyShakespeare" />
          </setting>
        </map>
        <map name="MapDailyShakespeare.DataService:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.DataService/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapDailyShakespeare.DataServiceInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.DataServiceInstances" />
          </setting>
        </map>
        <map name="MapDailyShakespeare.WebSite:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.WebSite/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapDailyShakespeare.WebSiteInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.WebSiteInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="DailyShakespeare.DataService" generation="1" functional="0" release="0" software="H:\DEV\DailyShakespeare\DailyShakespeare\csx\Debug\roles\DailyShakespeare.DataService" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="8080" />
            </componentports>
            <settings>
              <aCS name="DailyShakespeare" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;DailyShakespeare.DataService&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;DailyShakespeare.DataService&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;DailyShakespeare.WebSite&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DailyShakespeare.DataService.svclog" defaultAmount="[1000,1000,1000]" defaultSticky="true" kind="Directory" />
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.DataServiceInstances" />
            <sCSPolicyUpdateDomainMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.DataServiceUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.DataServiceFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="DailyShakespeare.WebSite" generation="1" functional="0" release="0" software="H:\DEV\DailyShakespeare\DailyShakespeare\csx\Debug\roles\DailyShakespeare.WebSite" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;DailyShakespeare.WebSite&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;DailyShakespeare.DataService&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;DailyShakespeare.WebSite&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.WebSiteInstances" />
            <sCSPolicyUpdateDomainMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.WebSiteUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.WebSiteFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="DailyShakespeare.WebSiteUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="DailyShakespeare.DataServiceUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="DailyShakespeare.DataServiceFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="DailyShakespeare.WebSiteFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="DailyShakespeare.DataServiceInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="DailyShakespeare.WebSiteInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="3f45e8b6-ffb0-4f25-878d-d5d4767304e3" ref="Microsoft.RedDog.Contract\ServiceContract\DailyShakespeareContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="b53ab585-0b46-4d42-8bb8-e889e71f14de" ref="Microsoft.RedDog.Contract\Interface\DailyShakespeare.DataService:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.DataService:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="c53ae11a-bc70-4104-97af-c6ddd9d2a8c0" ref="Microsoft.RedDog.Contract\Interface\DailyShakespeare.WebSite:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.WebSite:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>