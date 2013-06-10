<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="DailyShakespeare" generation="1" functional="0" release="0" Id="42887c8d-430e-4e76-b9b8-5f8d70f6eacd" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="DailyShakespeareGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="DailylShakespeare.Site:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/DailyShakespeare/DailyShakespeareGroup/LB:DailylShakespeare.Site:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="DailyShakespeare.DataService:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/DailyShakespeare/DailyShakespeareGroup/LB:DailyShakespeare.DataService:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="DailylShakespeare.Site:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/DailyShakespeare/DailyShakespeareGroup/MapDailylShakespeare.Site:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="DailylShakespeare.SiteInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/DailyShakespeare/DailyShakespeareGroup/MapDailylShakespeare.SiteInstances" />
          </maps>
        </aCS>
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
      </settings>
      <channels>
        <lBChannel name="LB:DailylShakespeare.Site:Endpoint1">
          <toPorts>
            <inPortMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailylShakespeare.Site/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:DailyShakespeare.DataService:Endpoint1">
          <toPorts>
            <inPortMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.DataService/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapDailylShakespeare.Site:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailylShakespeare.Site/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapDailylShakespeare.SiteInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailylShakespeare.SiteInstances" />
          </setting>
        </map>
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
      </maps>
      <components>
        <groupHascomponents>
          <role name="DailylShakespeare.Site" generation="1" functional="0" release="0" software="H:\DEV\DailyShakespeare\DailyShakespeare\csx\Debug\roles\DailylShakespeare.Site" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;DailylShakespeare.Site&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;DailylShakespeare.Site&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;DailyShakespeare.DataService&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailylShakespeare.SiteInstances" />
            <sCSPolicyUpdateDomainMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailylShakespeare.SiteUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailylShakespeare.SiteFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="DailyShakespeare.DataService" generation="1" functional="0" release="0" software="H:\DEV\DailyShakespeare\DailyShakespeare\csx\Debug\roles\DailyShakespeare.DataService" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="8080" />
            </componentports>
            <settings>
              <aCS name="DailyShakespeare" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;DailyShakespeare.DataService&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;DailylShakespeare.Site&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;DailyShakespeare.DataService&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
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
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="DailylShakespeare.SiteUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="DailyShakespeare.DataServiceUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="DailylShakespeare.SiteFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="DailyShakespeare.DataServiceFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="DailylShakespeare.SiteInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="DailyShakespeare.DataServiceInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="8ffcf521-1994-4e4c-89e3-d8a2236b5f57" ref="Microsoft.RedDog.Contract\ServiceContract\DailyShakespeareContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="c1aa6a9b-c08b-4bb0-b794-70e3a478e87b" ref="Microsoft.RedDog.Contract\Interface\DailylShakespeare.Site:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailylShakespeare.Site:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="f58f7a9d-469f-4f6b-b4d1-46aacba913d5" ref="Microsoft.RedDog.Contract\Interface\DailyShakespeare.DataService:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/DailyShakespeare/DailyShakespeareGroup/DailyShakespeare.DataService:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>