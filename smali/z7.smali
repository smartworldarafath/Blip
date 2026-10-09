.class public final synthetic Lz7;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/draganddrop/DragAndDropEvent;Landroidx/compose/ui/draganddrop/DragAndDropNode;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lz7;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lz7;->k:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 1

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lz7;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7;->k:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lz7;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lz7;->k:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;

    .line 9
    .line 10
    iget-boolean p1, p1, Landroidx/compose/ui/input/pointer/HoverIconModifierNode;->z:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 16
    .line 17
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->l:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->j:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 21
    .line 22
    :goto_0
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    .line 24
    .line 25
    iget-boolean v0, p1, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->k:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    iget-object v0, p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;->z:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const-string v0, "DragAndDropTarget self reference must be null at the start of a drag and drop session"

    .line 38
    .line 39
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_1
    const/4 v0, 0x0

    .line 43
    iput-object v0, p1, Landroidx/compose/ui/draganddrop/DragAndDropNode;->z:Landroidx/compose/ui/draganddrop/DragAndDropTarget;

    .line 44
    .line 45
    iget-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 46
    .line 47
    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 48
    .line 49
    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->j:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    .line 50
    .line 51
    :goto_2
    return-object p0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
