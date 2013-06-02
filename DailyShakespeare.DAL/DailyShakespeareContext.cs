﻿using System.Data.Objects;
using DailyShakespeare.Model;

namespace DailyShakespeare.DAL
{
    public class DailyShakespeareContext : ObjectContext
    {
        private ObjectSet<Character> _characters;
        private ObjectSet<Gender> _genders;
        private ObjectSet<Play> _plays;
        private ObjectSet<Monologue> _monologues;
        private ObjectSet<EmotionalState> _emotionalStates;
        private ObjectSet<User> _users;
        private ObjectSet<UserType> _userTypes;
 
 
        public DailyShakespeareContext() : base("name=DailyShakespeare")
        {
          
        }

        public ObjectSet<Character> Characters
        {
            get { return _characters ?? (_characters = CreateObjectSet<Character>()); }
        }

        public ObjectSet<Monologue> Monologues
        {
            get { return _monologues ?? (_monologues = CreateObjectSet<Monologue>()); }
        }

        public ObjectSet<EmotionalState> EmotionalState
        {
            get { return _emotionalStates ?? (_emotionalStates = CreateObjectSet<EmotionalState>()); }
        }

        public ObjectSet<User> Users
        {
            get { return _users ?? (_users = CreateObjectSet<User>()); }
        }

        public ObjectSet<UserType> UserTypes
        {
            get { return _userTypes ?? (_userTypes = CreateObjectSet<UserType>()); }
        }

        public ObjectSet<Gender> Genders
        {
            get { return _genders ?? (_genders = CreateObjectSet<Gender>()); }
        }

        public ObjectSet<Play> Plays
        {
            get { return _plays ?? (_plays = CreateObjectSet<Play>()); }
        }
    }
}