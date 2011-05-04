require 'rubygems'
require 'xmlsimple'
#require 'ActiveSupport'

module OpenEHR
  module Terminology
    class OpenEHRTerminology
      def initialize
        @terms = XmlSimple.xml_in(File.open('doc/openehr_terminology.xml'))
      end

      def languages
        @terms['Language']
      end

      def primary_rubrics
        @terms['PrimaryRubric']
      end

      def concepts
        @terms['Concept']
      end

      def groupers
        @terms['Grouper']
      end

      def grouped_concepts
        @terms['GroupedConcept']
      end

      def terminology_identifiers
        @terms['TerminologyIdentifiers']
      end

      def territories
        @terms['Territory']
      end
    end 
  end
end
