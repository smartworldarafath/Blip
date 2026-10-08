.class public final Landroidx/compose/ui/draganddrop/DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/draganddrop/DragAndDropNode;",
        "Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic k:Landroidx/compose/ui/draganddrop/DragAndDropNode;

.field public final synthetic l:Landroidx/compose/ui/draganddrop/DragAndDropEvent;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/draganddrop/DragAndDropNode;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1;->k:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1;->l:Landroidx/compose/ui/draganddrop/DragAndDropEvent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroidx/compose/ui/node/TraversableNode;

    .line 2
    .line 3
    move-object v0, p1

    .line 4
    check-cast v0, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1;->k:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 7
    .line 8
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->h(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getDragAndDropManager()Landroidx/compose/ui/draganddrop/DragAndDropManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    .line 17
    .line 18
    iget-object v1, v1, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->b:Landroidx/collection/ArraySet;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1;->l:Landroidx/compose/ui/draganddrop/DragAndDropEvent;

    .line 27
    .line 28
    invoke-static {v1}, Landroidx/compose/ui/draganddrop/DragAndDrop_androidKt;->a(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/draganddrop/DragAndDropNodeKt;->a(Landroidx/compose/ui/draganddrop/DragAndDropNode;J)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object p0, p0, Landroidx/compose/ui/draganddrop/DragAndDropNode$onMoved$$inlined$firstDescendantOrNull$1;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 39
    .line 40
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 41
    .line 42
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->l:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_0
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->j:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 46
    .line 47
    return-object p0
.end method
