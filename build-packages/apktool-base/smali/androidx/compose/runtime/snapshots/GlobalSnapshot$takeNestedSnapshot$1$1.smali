.class final Landroidx/compose/runtime/snapshots/GlobalSnapshot$takeNestedSnapshot$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/snapshots/SnapshotIdSet;",
        "Landroidx/compose/runtime/snapshots/ReadonlySnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/GlobalSnapshot$takeNestedSnapshot$1$1;->j:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->c:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-wide v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:J

    .line 7
    .line 8
    const-wide/16 v3, 0x1

    .line 9
    .line 10
    add-long/2addr v3, v1

    .line 11
    sput-wide v3, Landroidx/compose/runtime/snapshots/SnapshotKt;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/GlobalSnapshot$takeNestedSnapshot$1$1;->j:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2, p1, p0}, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;-><init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0

    .line 24
    throw p0
.end method
