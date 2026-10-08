.class public final synthetic Landroidx/compose/foundation/selection/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Landroidx/compose/foundation/selection/ToggleableNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/selection/ToggleableNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/selection/a;->j:Landroidx/compose/foundation/selection/ToggleableNode;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/selection/a;->j:Landroidx/compose/foundation/selection/ToggleableNode;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/selection/ToggleableNode;->W:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-boolean p0, p0, Landroidx/compose/foundation/selection/ToggleableNode;->V:Z

    .line 6
    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method
