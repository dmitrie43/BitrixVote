{"version":3,"sources":["callback.js"],"names":["BX","window","namespace","UI","Selector","Callback","select","params","fieldName","item","selectorId","entityType","undeletable","type","isNotEmptyObject","isNotEmptyString","selectorInstance","SelectorManager","instances","nodes","inputItemsContainer","findChild","attr","data-id","id","getOption","cleanNode","input","style","display","itemNode","create","attrs","data-type","props","className","getRenderInstance","class","itemDestination","itemDestinationPrefix","toLowerCase","itemDestinationUndeletable","children","util","array_merge","getHiddenInputCollection","itemId","multiple","itemDestinationText","html","name","showEmail","email","appendChild","itemDestinationDeleteButton","events","click","e","deleteItem","preventDefault","mouseover","currentTarget","parentNode","classList","add","itemDestinationHover","mouseout","remove","value","setTagTitle","tag","closeDialog","onCustomEvent","unSelect","itemsSelected","elements","findChildren","attribute","i","length","hasClass","popups","main","isShown","search","openDialog","inputBox","defer","focus","isSearchOpen","Object","keys","disableBackspace","isFunction","disableBackspaceHandler","unbind","bind","event","keyCode","in_array","target","tagName","stopPropagation","setTimeout","result","push"],"mappings":"CAAA,WAEA,IAAIA,EAAKC,OAAOD,GAEhBA,EAAGE,UAAU,SAEb,KAAMF,EAAGG,GAAGC,SAASC,SACrB,CACC,OAGDL,EAAGG,GAAGC,SAASC,SAAW,aAI1BL,EAAGG,GAAGC,SAASC,SAASC,OAAS,SAASC,GAEzC,IACCC,EAAYD,EAAOC,UACnBC,EAAOF,EAAOE,KACdC,EAAaH,EAAOG,WACpBC,EAAaJ,EAAOI,WACpBC,EAAcL,EAAOK,YAEtB,IACEF,IACGV,EAAGa,KAAKC,iBAAiBL,KACzBT,EAAGa,KAAKE,iBAAiBJ,GAE9B,CACC,OAGD,IAAIK,EAAmBhB,EAAGG,GAAGc,gBAAgBC,UAAUR,GACvD,IAAKV,EAAGa,KAAKC,iBAAiBE,GAC9B,CACC,OAGD,GACCA,EAAiBG,MAAMC,sBACnBpB,EAAGqB,UAAUL,EAAiBG,MAAMC,qBAAuBE,MAASC,UAAYd,EAAKe,KAAO,MAAO,OAExG,CACC,GAAIR,EAAiBS,UAAU,aAAe,IAC9C,CACCzB,EAAG0B,UAAUV,EAAiBG,MAAMC,qBACpC,GAAIJ,EAAiBG,MAAMQ,MAC3B,CACCX,EAAiBG,MAAMQ,MAAMC,MAAMC,QAAU,QAY/C,IAAIC,EAAW9B,EAAG+B,OAAO,QACxBC,OACCT,UAAYd,EAAKe,GACjBS,YAActB,GAEfuB,OACCC,UAAWnB,EAAiBoB,oBAAoBC,MAAMC,gBAAkB,IAAMtB,EAAiBoB,oBAAoBC,MAAME,sBAAwB5B,EAAW6B,cAAgB,KAAO5B,EAAc,IAAMI,EAAiBoB,oBAAoBC,MAAMI,2BAA6B,KAEhRC,SAAU1C,EAAG2C,KAAKC,YAAY5C,EAAGG,GAAGC,SAASC,SAASwC,0BACrDlC,WAAYA,EACZmC,OAAQrC,EAAKe,GACbhB,UAAWQ,EAAiBR,UAC5BuC,SAAW/B,EAAiBS,UAAU,aAAe,OAErDzB,EAAG+B,OAAO,QACTG,OACCC,UAAWnB,EAAiBoB,oBAAoBC,MAAMW,qBAEvDC,KAAOxC,EAAKyC,MACXlD,EAAGa,KAAKE,iBAAiBN,EAAK0C,YAC3B1C,EAAK0C,WAAa,KAClBnD,EAAGa,KAAKE,iBAAiBR,EAAOE,KAAK2C,OACrC,KAAO7C,EAAOE,KAAK2C,MAAQ,IAC3B,UAMP,IAAIxC,EACJ,CACCkB,EAASuB,YAAYrD,EAAG+B,OAAO,QAC9BG,OACCC,UAAWnB,EAAiBoB,oBAAoBC,MAAMiB,6BAEvDC,QACCC,MAAQ,SAASC,GAChBzC,EAAiBoB,oBAAoBsB,YACpC/C,WAAYA,EACZmC,OAAQrC,EAAKe,KAEdiC,EAAEE,kBAEHC,UAAY,SAASH,GACpBA,EAAEI,cAAcC,WAAWC,UAAUC,IAAIhD,EAAiBoB,oBAAoBC,MAAM4B,uBAErFC,SAAW,SAAST,GACnBA,EAAEI,cAAcC,WAAWC,UAAUI,OAAOnD,EAAiBoB,oBAAoBC,MAAM4B,2BAM3FjD,EAAiBG,MAAMC,oBAAoBiC,YAAYvB,GAGxD,GAAId,EAAiBG,MAAMQ,MAC3B,CACCX,EAAiBG,MAAMQ,MAAMyC,MAAQ,GAGtC,GAAIpD,EAAiBS,UAAU,aAAe,IAC9C,CACCT,EAAiBqD,kBAGlB,CACC,GAAIrD,EAAiBG,MAAMmD,IAC3B,CACCtE,EAAG4B,MAAMZ,EAAiBG,MAAMmD,IAAK,UAAW,QAEjDtD,EAAiBuD,cAGlBvE,EAAGwE,cAAc,mCAChB9D,WAAYM,EAAiBQ,OAI/BxB,EAAGG,GAAGC,SAASC,SAASoE,SAAW,SAASlE,GAE3C,IACCE,EAAOF,EAAOE,KACdC,EAAaH,EAAOG,WACpBC,EAAaJ,EAAOI,WAErB,IACED,IACGV,EAAGa,KAAKC,iBAAiBL,KACzBT,EAAGa,KAAKE,iBAAiBJ,GAE9B,CACC,OAGD,IAAIK,EAAmBhB,EAAGG,GAAGc,gBAAgBC,UAAUR,GACvD,IAAKV,EAAGa,KAAKC,iBAAiBE,GAC9B,CACC,cAGMA,EAAiB0D,cAAcjE,EAAKe,IAE3C,GAAIR,EAAiBG,MAAMC,oBAC3B,CACC,IAAIuD,EAAW3E,EAAG4E,aAAa5D,EAAiBG,MAAMC,qBAAuByD,WAAatD,UAAW,GAAKd,EAAKe,GAAK,KAAQ,MAC5H,GAAImD,IAAa,KACjB,CACC,IAAK,IAAIG,EAAI,EAAGA,EAAIH,EAASI,OAAQD,IACrC,CACC,IAAK9E,EAAGgF,SAASL,EAASG,GAAI9D,EAAiBoB,oBAAoBC,MAAMI,4BACzE,CACCzC,EAAGmE,OAAOQ,EAASG,OAMvB,GAAI9D,EAAiBG,MAAMQ,MAC3B,CACCX,EAAiBG,MAAMQ,MAAMyC,MAAQ,GAGtCpD,EAAiBqD,cAEjB,GACCrD,EAAiBG,MAAMmD,MAEtBtD,EAAiBS,UAAU,iBAAmB,OAG3CT,EAAiBiE,OAAOC,OACrBlE,EAAiBiE,OAAOC,KAAKC,cAGhCnE,EAAiBiE,OAAOG,SACrBpE,EAAiBiE,OAAOG,OAAOD,YAKvC,CACCnF,EAAG4B,MAAMZ,EAAiBG,MAAMmD,IAAK,UAAW,gBAGjDtE,EAAGwE,cAAc,qCAChB9D,WAAYM,EAAiBQ,OAI/BxB,EAAGG,GAAGC,SAASC,SAASgF,WAAa,SAAS9E,GAE7C,IACCG,EAAaH,EAAOG,WAErB,IAAKA,EACL,CACC,OAGD,IAAIM,EAAmBhB,EAAGG,GAAGc,gBAAgBC,UAAUR,GACvD,IAAKV,EAAGa,KAAKC,iBAAiBE,GAC9B,CACC,OAGD,GACCA,EAAiBS,UAAU,aAAe,KACvCT,EAAiBG,MAAMmE,SAE3B,CACCtF,EAAG4B,MAAMZ,EAAiBG,MAAMmE,SAAU,UAAW,gBAGtD,GAAItE,EAAiBG,MAAMmD,IAC3B,CACCtE,EAAG4B,MAAMZ,EAAiBG,MAAMmD,IAAK,UAAW,QAGjDtE,EAAGuF,MAAMvF,EAAGwF,MAAZxF,CAAmBgB,EAAiBG,MAAMQ,QAG3C3B,EAAGG,GAAGC,SAASC,SAASkE,YAAc,SAAShE,GAE9C,IACCG,EAAaH,EAAOG,WAErB,IAAKA,EACL,CACC,OAGD,IAAIM,EAAmBhB,EAAGG,GAAGc,gBAAgBC,UAAUR,GACvD,IAAKV,EAAGa,KAAKC,iBAAiBE,GAC9B,CACC,OAGD,IACEA,EAAiByE,gBACfzE,EAAiBG,MAAMQ,OACvBX,EAAiBG,MAAMQ,MAAMyC,MAAMW,QAAU,EAEjD,CACC,GAAI/D,EAAiBG,MAAMmE,SAC3B,CACCtF,EAAG4B,MAAMZ,EAAiBG,MAAMmE,SAAU,UAAW,QAGtD,GACCtE,EAAiBG,MAAMmD,MAEtBtD,EAAiBS,UAAU,aAAe,KACvCiE,OAAOC,KAAK3E,EAAiB0D,eAAeK,QAAU,GAG3D,CACC/E,EAAG4B,MAAMZ,EAAiBG,MAAMmD,IAAK,UAAW,gBAGjDtE,EAAGG,GAAGC,SAASC,SAASuF,qBAI1B5F,EAAGG,GAAGC,SAASC,SAASuF,iBAAmB,WAE1C,GAAI5F,EAAGa,KAAKgF,WAAW7F,EAAGG,GAAGC,SAASC,SAASyF,yBAC/C,CACC9F,EAAG+F,OAAO9F,OAAQ,UAAWD,EAAGG,GAAGC,SAASC,SAASyF,yBAGtD9F,EAAGgG,KAAK/F,OAAQ,UAAWD,EAAGG,GAAGC,SAASC,SAASyF,wBAA0B,SAASG,GAErF,GACCA,EAAMC,SAAW,IACblG,EAAG2C,KAAKwD,SAASF,EAAMG,OAAOC,QAAQ7D,eAAgB,QAAS,aAEpE,CACCyD,EAAMK,kBACNL,EAAMtC,iBACN,OAAO,SAIT4C,WAAW,WAEVvG,EAAG+F,OAAO9F,OAAQ,UAAWD,EAAGG,GAAGC,SAASC,SAASyF,yBACrD9F,EAAGG,GAAGC,SAASC,SAASyF,wBAA0B,MAChD,MAGJ9F,EAAGG,GAAGC,SAASC,SAASwC,yBAA2B,SAAStC,GAE3D,IACCiG,KACAhG,EAAaR,EAAGa,KAAKE,iBAAiBR,EAAOC,WAAaD,EAAOC,UAAY,MAC7EG,EAAcX,EAAGa,KAAKE,iBAAiBR,EAAOI,YAAcJ,EAAOI,WAAa,MAChFmC,EAAU9C,EAAGa,KAAKE,iBAAiBR,EAAOuC,QAAUvC,EAAOuC,OAAS,MAErE,IAAKtC,EACL,CACC,OAAOgG,EAGRA,EAAOC,KAAKzG,EAAG+B,OAAO,SACrBC,OACCnB,KAAO,SACPqC,KAAO1C,KAAeD,EAAOwC,SAAW,KAAO,IAC/CqB,MAAQtB,MAmFV,OAAO0D,IA5ZR","file":"callback.map.js"}