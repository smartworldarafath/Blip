.class public final Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Landroidx/work/impl/constraints/ConstraintsState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:[Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$2;->j:[Lkotlinx/coroutines/flow/Flow;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker$track$$inlined$combine$1$2;->j:[Lkotlinx/coroutines/flow/Flow;

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    new-array p0, p0, [Landroidx/work/impl/constraints/ConstraintsState;

    .line 5
    .line 6
    return-object p0
.end method
