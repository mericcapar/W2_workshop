# Requirements and Conceptual Model

## Group Members
- Meric Capar
- Matthew Pena

## End User and Needs
The end user is Lana she is the business owner. She needs to:
- Keep track of her clients and their dogs
- Schedule walks and see who is walking which dog
- Know which walks are paid and which are not

## Data Categories

**Clients (dog owners)**
- Name
- Phone number
- Email
- Address

**Dogs**
- Name
- Breed
- Age
- Size
- Special notes (allergies, behavior)

**Walkers**
- Name
- Phone number
- Email

**Walks**
- Date and time
- Duration
- Which dog(s)
- Which walker
- Price
- Paid / unpaid status

# Logical Model

## Entities and Attributes
**clients**: client_id (PK), first_name, last_name, phone, email, address

**dogs**: dog_id (PK), client_id (FK), name, breed, age, size, notes

**walkers**: walker_id (PK), first_name, last_name, phone, email

**walks**: walk_id (PK), walker_id (FK), walk_date, start_time, duration_min, price, is_paid

## Relationships
Entities that will have relationships with each other are clients and dogs, walkers and dogs, dogs and walks, and walkers and walks. 

## Many-to-Many
None our tables with many-to-many relationships seem to require a resolving table. 
