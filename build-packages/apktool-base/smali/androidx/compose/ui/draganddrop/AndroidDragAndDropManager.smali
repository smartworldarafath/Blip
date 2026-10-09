.class public final Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Landroidx/compose/ui/draganddrop/DragAndDropManager;


# instance fields
.field public final a:Landroidx/compose/ui/draganddrop/DragAndDropNode;

.field public final b:Landroidx/collection/ArraySet;

.field public final c:Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/compose/ui/draganddrop/DragAndDropNode;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->a:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 10
    .line 11
    new-instance v0, Landroidx/collection/ArraySet;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->b:Landroidx/collection/ArraySet;

    .line 18
    .line 19
    new-instance v0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;-><init>(Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->c:Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    .line 1
    new-instance p1, Landroidx/compose/ui/draganddrop/DragAndDropEvent;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Landroidx/compose/ui/draganddrop/DragAndDropEvent;-><init>(Landroid/view/DragEvent;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    iget-object v0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->b:Landroidx/collection/ArraySet;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iget-object p0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->a:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 14
    .line 15
    packed-switch p2, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    return v1

    .line 19
    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->a1(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :pswitch_1
    invoke-virtual {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->Z0(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :pswitch_2
    new-instance p2, Lc;

    .line 28
    .line 29
    const/16 v2, 0x10

    .line 30
    .line 31
    invoke-direct {p2, v2, p1}, Lc;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p0}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v2, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->j:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 39
    .line 40
    if-eq p1, v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p0, p2}, Landroidx/compose/ui/node/TraversableNodeKt;->d(Landroidx/compose/ui/node/TraversableNode;Lkotlin/jvm/functions/Function1;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 47
    .line 48
    .line 49
    return v1

    .line 50
    :pswitch_3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->Y0(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :pswitch_4
    invoke-virtual {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->b1(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    .line 56
    .line 57
    .line 58
    return v1

    .line 59
    :pswitch_5
    new-instance p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lz7;

    .line 65
    .line 66
    invoke-direct {v1, p1, p0, p2}, Lz7;-><init>(Landroidx/compose/ui/draganddrop/DragAndDropEvent;Landroidx/compose/ui/draganddrop/DragAndDropNode;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p0}, Lz7;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    sget-object v3, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->j:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 74
    .line 75
    if-eq v2, v3, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-static {p0, v1}, Landroidx/compose/ui/node/TraversableNodeKt;->d(Landroidx/compose/ui/node/TraversableNode;Lkotlin/jvm/functions/Function1;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget-boolean p0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    :goto_2
    move-object v0, p2

    .line 88
    check-cast v0, Landroidx/collection/IndexBasedArrayIterator;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/collection/IndexBasedArrayIterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    .line 101
    .line 102
    check-cast v0, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->c1(Landroidx/compose/ui/draganddrop/DragAndDropEvent;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    return p0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
