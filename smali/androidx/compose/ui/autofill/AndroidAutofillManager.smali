.class public final Landroidx/compose/ui/autofill/AndroidAutofillManager;
.super Landroidx/compose/ui/autofill/AutofillManager;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/semantics/SemanticsListener;
.implements Landroidx/compose/ui/focus/FocusListener;


# instance fields
.field public final j:Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;

.field public final k:Landroidx/compose/ui/semantics/SemanticsOwner;

.field public final l:Landroidx/compose/ui/platform/AndroidComposeView;

.field public final m:Landroidx/compose/ui/spatial/RectManager;

.field public final n:Ljava/lang/String;

.field public final o:Landroid/graphics/Rect;

.field public final p:Landroid/view/autofill/AutofillId;

.field public final q:Landroidx/collection/MutableIntSet;

.field public r:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;Landroidx/compose/ui/semantics/SemanticsOwner;Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/spatial/RectManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->j:Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->k:Landroidx/compose/ui/semantics/SemanticsOwner;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->l:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->m:Landroidx/compose/ui/spatial/RectManager;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->n:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p1, Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->o:Landroid/graphics/Rect;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {p3, p1}, Landroid/view/View;->setImportantForAutofill(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->p:Landroid/view/autofill/AutofillId;

    .line 32
    .line 33
    new-instance p1, Landroidx/collection/MutableIntSet;

    .line 34
    .line 35
    invoke-direct {p1}, Landroidx/collection/MutableIntSet;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->q:Landroidx/collection/MutableIntSet;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    const-string p0, "Required value was null."

    .line 42
    .line 43
    invoke-static {p0}, Lq;->p(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    throw p0
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/focus/FocusTargetModifierNode;Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->l:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->j:Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->y()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-static {v3}, Landroidx/compose/ui/autofill/AndroidAutofillManager_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ne v3, v2, :cond_0

    .line 25
    .line 26
    iget p1, p1, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a()Landroid/view/autofill/AutofillManager;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, v0, p1}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    if-eqz p2, :cond_1

    .line 36
    .line 37
    invoke-static {p2}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->y()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    invoke-static {p2}, Landroidx/compose/ui/autofill/AndroidAutofillManager_androidKt;->a(Landroidx/compose/ui/semantics/SemanticsConfiguration;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-ne p2, v2, :cond_1

    .line 54
    .line 55
    iget p1, p1, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 56
    .line 57
    iget-object p0, p0, Landroidx/compose/ui/autofill/AndroidAutofillManager;->m:Landroidx/compose/ui/spatial/RectManager;

    .line 58
    .line 59
    iget-object p2, p0, Landroidx/compose/ui/spatial/RectManager;->a:Landroidx/collection/IntObjectMap;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Landroidx/compose/ui/node/LayoutNode;

    .line 66
    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    iget v3, p2, Landroidx/compose/ui/node/LayoutNode;->p:I

    .line 70
    .line 71
    const/4 v4, -0x4

    .line 72
    if-eq v3, v4, :cond_1

    .line 73
    .line 74
    iget-object v3, p0, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/RectList;

    .line 75
    .line 76
    invoke-virtual {p0, p2}, Landroidx/compose/ui/spatial/RectManager;->e(Landroidx/compose/ui/node/LayoutNode;)I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    iget-object p2, v3, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 81
    .line 82
    aget-wide v3, p2, p0

    .line 83
    .line 84
    add-int/2addr p0, v2

    .line 85
    aget-wide v5, p2, p0

    .line 86
    .line 87
    const/16 p0, 0x20

    .line 88
    .line 89
    shr-long v7, v3, p0

    .line 90
    .line 91
    long-to-int p2, v7

    .line 92
    long-to-int v2, v3

    .line 93
    shr-long v3, v5, p0

    .line 94
    .line 95
    long-to-int p0, v3

    .line 96
    long-to-int v3, v5

    .line 97
    new-instance v4, Landroid/graphics/Rect;

    .line 98
    .line 99
    invoke-direct {v4, p2, v2, p0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Landroidx/compose/ui/autofill/PlatformAutofillManagerImpl;->a()Landroid/view/autofill/AutofillManager;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0, v0, p1, v4}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    return-void
.end method
