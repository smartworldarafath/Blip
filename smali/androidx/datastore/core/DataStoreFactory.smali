.class public abstract Landroidx/datastore/core/DataStoreFactory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Landroidx/datastore/core/FileStorage;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;)Landroidx/datastore/core/DataStoreImpl;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$getInitializer$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p2, v1}, Landroidx/datastore/core/DataMigrationInitializer$Companion$getInitializer$1;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Landroidx/datastore/core/DataStoreImpl;

    .line 15
    .line 16
    invoke-direct {v0, p0, p2, p1, p3}, Landroidx/datastore/core/DataStoreImpl;-><init>(Landroidx/datastore/core/FileStorage;Ljava/util/List;Landroidx/datastore/core/CorruptionHandler;Lkotlinx/coroutines/CoroutineScope;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
