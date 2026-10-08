.class public final Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
        "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;

.field public final b:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/time/TimeModule_EventClockFactory;Lcom/google/android/datatransport/runtime/time/TimeModule_UptimeClockFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;->a:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;->b:Ljavax/inject/Provider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v1, Lcom/google/android/datatransport/runtime/time/WallTimeClock;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Lcom/google/android/datatransport/runtime/time/UptimeClock;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_StoreConfigFactory$InstanceHolder;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_StoreConfigFactory;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_StoreConfigFactory;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;->a:Ljavax/inject/Provider;

    .line 18
    .line 19
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    move-object v4, v0

    .line 24
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 25
    .line 26
    check-cast v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    .line 27
    .line 28
    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    .line 29
    .line 30
    iget-object v5, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;->b:Ljavax/inject/Provider;

    .line 31
    .line 32
    move-object v6, v4

    .line 33
    move-object v4, v3

    .line 34
    move-object v3, v6

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;-><init>(Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;Ljavax/inject/Provider;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method
