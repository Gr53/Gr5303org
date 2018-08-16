rails g scaffold City name coddane
rails g scaffold Locality cities:references name:string
rails g scaffold Neighborhood localities:references name:string
rails g scaffold Net neighborhoods:references name
rails g scaffold SupportNet nets:references name:string
rails g scaffold IdentificationType identificationtype:string
rails g scaffold User names:string surnames:string identification_types:references identificationnumber:string cellphonenumber:string username:string password:string password_digest support_nets:references active:integer locked:integer photo:binary 
rails g scaffold RiskLevel level
rails g scaffold IncidentType name risk_levels:references
rails g scaffold Incident users:references latitude longitude fecha:datetime incident_types:references pmuerte:integer nambulancia:integer npolicia:integer prioridad:integer riesgo:integer descripcion gnbtnpanico:integer imagen:binary 



---Eliminar scaffold
rails destroy scaffold xxxxxx