.class final Landroidx/compose/foundation/interaction/PressInteractionKt$collectIsPressedAsState$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field public final synthetic j:Ljava/util/ArrayList;

.field public final synthetic k:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/interaction/PressInteractionKt$collectIsPressedAsState$1$1$1;->j:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/interaction/PressInteractionKt$collectIsPressedAsState$1$1$1;->k:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 2
    .line 3
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/interaction/PressInteractionKt$collectIsPressedAsState$1$1$1;->j:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 18
    .line 19
    iget-object p1, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;->a:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 30
    .line 31
    iget-object p1, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->a:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    xor-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p0, p0, Landroidx/compose/foundation/interaction/PressInteractionKt$collectIsPressedAsState$1$1$1;->k:Landroidx/compose/runtime/MutableState;

    .line 47
    .line 48
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p0
.end method
