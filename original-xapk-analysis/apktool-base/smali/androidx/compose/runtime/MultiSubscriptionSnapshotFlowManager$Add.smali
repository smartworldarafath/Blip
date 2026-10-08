.class final Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$SubscriptionChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Add"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lkotlinx/coroutines/channels/SendChannel;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;->b:Lkotlinx/coroutines/channels/SendChannel;

    .line 7
    .line 8
    return-void
.end method
