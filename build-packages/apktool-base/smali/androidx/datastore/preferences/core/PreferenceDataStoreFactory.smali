.class public abstract Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/preferences/core/PreferenceDataStore;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/datastore/core/FileStorage;

    .line 5
    .line 6
    new-instance v1, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory$create$delegate$1;

    .line 7
    .line 8
    invoke-direct {v1, p3}, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory$create$delegate$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroidx/datastore/core/FileStorage;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    new-instance p3, Landroidx/datastore/preferences/core/PreferenceDataStore;

    .line 15
    .line 16
    invoke-static {v0, p0, p1, p2}, Landroidx/datastore/core/DataStoreFactory;->a(Landroidx/datastore/core/FileStorage;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;)Landroidx/datastore/core/DataStoreImpl;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {p3, p0}, Landroidx/datastore/preferences/core/PreferenceDataStore;-><init>(Landroidx/datastore/core/DataStore;)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Landroidx/datastore/preferences/core/PreferenceDataStore;

    .line 24
    .line 25
    invoke-direct {p0, p3}, Landroidx/datastore/preferences/core/PreferenceDataStore;-><init>(Landroidx/datastore/core/DataStore;)V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method
