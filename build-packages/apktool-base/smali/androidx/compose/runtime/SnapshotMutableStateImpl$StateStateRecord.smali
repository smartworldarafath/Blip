.class final Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;
.super Landroidx/compose/runtime/snapshots/StateRecord;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/SnapshotMutableStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateStateRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/snapshots/StateRecord;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/snapshots/StateRecord;-><init>(J)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->c:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method public final b(J)Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl$StateStateRecord;-><init>(JLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
