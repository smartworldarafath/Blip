.class public final synthetic Lcom/google/firebase/heartbeatinfo/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/firebase/heartbeatinfo/e;->j:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 2
    .line 3
    sget-object v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->d:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/firebase/heartbeatinfo/e;->j:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, v0, p0}, Landroidx/datastore/preferences/core/MutablePreferences;->c(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfoStorage;->d(Landroidx/datastore/preferences/core/MutablePreferences;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method
