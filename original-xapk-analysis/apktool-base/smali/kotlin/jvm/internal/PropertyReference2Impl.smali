.class public Lkotlin/jvm/internal/PropertyReference2Impl;
.super Lkotlin/jvm/internal/PropertyReference2;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    sget-object v1, Lkotlin/jvm/internal/CallableReference$NoReceiver;->j:Lkotlin/jvm/internal/CallableReference$NoReceiver;

    .line 3
    .line 4
    const-class v2, Lcom/google/firebase/datastorage/JavaDataStorage;

    .line 5
    .line 6
    const-string v3, "dataStore"

    .line 7
    .line 8
    const-string v4, "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
