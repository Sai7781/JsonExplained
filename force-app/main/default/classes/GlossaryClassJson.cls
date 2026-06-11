public class GlossaryClassJson {
    

    public Glossary glossary;

    public class Glossary {
        public String title;
        public GlossDiv GlossDiv;
    }

    public class GlossDiv {
        public String title;
        public GlossList GlossList;
    }

    public class GlossList {
        public GlossEntry GlossEntry;
    }

    public class GlossEntry {
        public String ID;
        public String SortAs;
        public String GlossTerm;
        public String Acronym;
        public String Abbrev;
        public GlossDef GlossDef;
        public String GlossSee;
    }

    public class GlossDef {
        public String para;
        public List<String> GlossSeeAlso;
    }

    /**
     * Parses the JSON payload and returns an instance of GlossaryClassJson
     */
    public static GlossaryClassJson parse(String jsonPayload) {
        return (GlossaryClassJson) System.JSON.deserialize(jsonPayload, GlossaryClassJson.class);
    }

    public static void processGlossary(GlossaryClassJson glossaryData) {
        //system.debug(glossaryData);
        String Title=(string)        glossaryData.glossary.title;
        system.debug('title is:'+Title);
    }


}


