# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


	#:names, :surnames, :identificationtypes_id, :identificationnumber, :cellphonenumber
	#, :username, :password, :password_digest, :supportnets_id, :active, :locked, :photo

@identificationtypes_id=IdentificationType.find(1)
@supportnets_id=SupportNet.find(1)

@user=User.new({
	names: 'Eduar Giovanni',
	surnames: 'Romero Rubiano',
	identification_types_id: IdentificationType.find(1), 
	identificationnumber: '1019082510',
	cellphonenumber: '3214312927',
	username: 'edw536',
	password:'Edwar536',
	password_confirmation: 'Edwar536',
	support_nets_id: SupportNet.find(1),
	active: '0',
	locked: '0',
	photo: nil
	})
@user.save

@user=User.new({
	names: 'Eduar Giovanni',
	surnames: 'Romero Rubiano',
	identification_types_id: 1, 
	identificationnumber: '1019082510',
	cellphonenumber: '3214312927',
	username: 'edw536',
	password:'Edwar536',
	password_confirmation: 'Edwar536',
	support_nets_id: 1,
	active: '0',
	locked: '0',
	photo: nil
	})

@user.save


@user=User.new({
	names: 'Eduar Giovanni',
	surnames: 'Romero Rubiano',
	identificationnumber: '1019082510',
	cellphonenumber: '3214312927',
	username: 'edw536',
	password:'Edwar536',
	password_confirmation: 'Edwar536',
	active: '0',
	locked: '0'
	})

@user.save