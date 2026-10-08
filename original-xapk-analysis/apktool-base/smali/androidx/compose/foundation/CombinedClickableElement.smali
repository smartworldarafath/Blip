.class final Landroidx/compose/foundation/CombinedClickableElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/CombinedClickableNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final c:Landroidx/compose/foundation/IndicationNodeFactory;

.field public final d:Z

.field public final e:Lkotlin/jvm/functions/Function0;

.field public final f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/IndicationNodeFactory;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/CombinedClickableElement;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableElement;->c:Landroidx/compose/foundation/IndicationNodeFactory;

    .line 7
    .line 8
    iput-boolean p5, p0, Landroidx/compose/foundation/CombinedClickableElement;->d:Z

    .line 9
    .line 10
    iput-object p3, p0, Landroidx/compose/foundation/CombinedClickableElement;->e:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-object p4, p0, Landroidx/compose/foundation/CombinedClickableElement;->f:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_1
    const-class v1, Landroidx/compose/foundation/CombinedClickableElement;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    check-cast p1, Landroidx/compose/foundation/CombinedClickableElement;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 20
    .line 21
    iget-object v2, p1, Landroidx/compose/foundation/CombinedClickableElement;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->c:Landroidx/compose/foundation/IndicationNodeFactory;

    .line 31
    .line 32
    iget-object v2, p1, Landroidx/compose/foundation/CombinedClickableElement;->c:Landroidx/compose/foundation/IndicationNodeFactory;

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    iget-boolean v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->d:Z

    .line 42
    .line 43
    iget-boolean v2, p1, Landroidx/compose/foundation/CombinedClickableElement;->d:Z

    .line 44
    .line 45
    if-eq v1, v2, :cond_5

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_5
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->e:Lkotlin/jvm/functions/Function0;

    .line 49
    .line 50
    iget-object v2, p1, Landroidx/compose/foundation/CombinedClickableElement;->e:Lkotlin/jvm/functions/Function0;

    .line 51
    .line 52
    if-eq v1, v2, :cond_6

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_6
    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableElement;->f:Lkotlin/jvm/functions/Function0;

    .line 56
    .line 57
    iget-object p1, p1, Landroidx/compose/foundation/CombinedClickableElement;->f:Lkotlin/jvm/functions/Function0;

    .line 58
    .line 59
    if-eq p0, p1, :cond_7

    .line 60
    .line 61
    :goto_0
    const/4 p0, 0x0

    .line 62
    return p0

    .line 63
    :cond_7
    return v0
.end method

.method public final g()Landroidx/compose/ui/Modifier$Node;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/CombinedClickableNode;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->c:Landroidx/compose/foundation/IndicationNodeFactory;

    .line 4
    .line 5
    iget-boolean v5, p0, Landroidx/compose/foundation/CombinedClickableElement;->d:Z

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/compose/foundation/CombinedClickableElement;->e:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    iget-object v4, p0, Landroidx/compose/foundation/CombinedClickableElement;->f:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/CombinedClickableNode;-><init>(Landroidx/compose/foundation/IndicationNodeFactory;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    const/16 v2, 0x1f

    .line 13
    .line 14
    mul-int/2addr v1, v2

    .line 15
    iget-object v3, p0, Landroidx/compose/foundation/CombinedClickableElement;->c:Landroidx/compose/foundation/IndicationNodeFactory;

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-interface {v3}, Landroidx/compose/foundation/IndicationNodeFactory;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v3, v0

    .line 25
    :goto_1
    add-int/2addr v1, v3

    .line 26
    mul-int/2addr v1, v2

    .line 27
    invoke-static {v1, v2, v0}, Ljb;->b(IIZ)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-boolean v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->d:Z

    .line 32
    .line 33
    const/16 v3, 0x745f

    .line 34
    .line 35
    invoke-static {v1, v3, v2}, Ljb;->b(IIZ)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->e:Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    add-int/2addr v2, v1

    .line 46
    mul-int/lit16 v2, v2, 0x3c1

    .line 47
    .line 48
    iget-object p0, p0, Landroidx/compose/foundation/CombinedClickableElement;->f:Lkotlin/jvm/functions/Function0;

    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    :cond_2
    add-int/2addr v2, v0

    .line 57
    mul-int/lit16 v2, v2, 0x3c1

    .line 58
    .line 59
    const/4 p0, 0x1

    .line 60
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    add-int/2addr p0, v2

    .line 65
    return p0
.end method

.method public final i(Landroidx/compose/ui/Modifier$Node;)V
    .locals 10

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/compose/foundation/CombinedClickableNode;

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v0, Landroidx/compose/foundation/CombinedClickableNode;->U:Z

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    move v1, p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v8

    .line 15
    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->f:Lkotlin/jvm/functions/Function0;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    move v3, p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v3, v8

    .line 22
    :goto_1
    if-eq v1, v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode;->d1()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 28
    .line 29
    .line 30
    move v1, p1

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move v1, v8

    .line 33
    :goto_2
    iput-object v2, v0, Landroidx/compose/foundation/CombinedClickableNode;->T:Lkotlin/jvm/functions/Function0;

    .line 34
    .line 35
    iget-boolean v2, v0, Landroidx/compose/foundation/AbstractClickableNode;->E:Z

    .line 36
    .line 37
    iget-boolean v4, p0, Landroidx/compose/foundation/CombinedClickableElement;->d:Z

    .line 38
    .line 39
    if-eq v2, v4, :cond_3

    .line 40
    .line 41
    move v9, p1

    .line 42
    goto :goto_3

    .line 43
    :cond_3
    move v9, v1

    .line 44
    :goto_3
    iget-object v1, p0, Landroidx/compose/foundation/CombinedClickableElement;->b:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/compose/foundation/CombinedClickableElement;->c:Landroidx/compose/foundation/IndicationNodeFactory;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    iget-object v7, p0, Landroidx/compose/foundation/CombinedClickableElement;->e:Lkotlin/jvm/functions/Function0;

    .line 52
    .line 53
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/foundation/AbstractClickableNode;->o1(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/IndicationNodeFactory;ZZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    if-eqz v9, :cond_4

    .line 57
    .line 58
    invoke-virtual {v0, v8}, Landroidx/compose/foundation/CombinedClickableNode;->p1(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/CombinedClickableNode;->p1(Z)V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-void
.end method
