.class public final Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/work/impl/constraints/ConstraintListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/work/impl/constraints/ConstraintListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/work/impl/constraints/controllers/BaseConstraintController;

.field public final synthetic b:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Landroidx/work/impl/constraints/controllers/BaseConstraintController;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;->a:Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;->b:Lkotlinx/coroutines/channels/ProducerScope;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;->a:Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->c()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-direct {p1, v0}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;-><init>(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object p1, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;->a:Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;

    .line 20
    .line 21
    :goto_0
    iget-object p0, p0, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;->b:Lkotlinx/coroutines/channels/ProducerScope;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void
.end method
