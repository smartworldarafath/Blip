.class final Landroidx/compose/animation/VeilModifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/animation/VeilModifierNode;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Landroidx/compose/animation/core/TransitionInstance;

.field public final c:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public final d:Landroidx/compose/animation/EnterTransition;

.field public final e:Landroidx/compose/animation/ExitTransition;

.field public final f:Landroidx/compose/animation/SharedMutableTransformState;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/TransitionInstance;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Landroidx/compose/animation/SharedMutableTransformState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/animation/VeilModifierElement;->b:Landroidx/compose/animation/core/TransitionInstance;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/animation/VeilModifierElement;->c:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/animation/VeilModifierElement;->d:Landroidx/compose/animation/EnterTransition;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/animation/VeilModifierElement;->e:Landroidx/compose/animation/ExitTransition;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/animation/VeilModifierElement;->f:Landroidx/compose/animation/SharedMutableTransformState;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/animation/VeilModifierElement;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/animation/VeilModifierElement;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/animation/VeilModifierElement;->b:Landroidx/compose/animation/core/TransitionInstance;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/compose/animation/VeilModifierElement;->b:Landroidx/compose/animation/core/TransitionInstance;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Landroidx/compose/animation/VeilModifierElement;->c:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 21
    .line 22
    iget-object v3, p1, Landroidx/compose/animation/VeilModifierElement;->c:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-object v1, p0, Landroidx/compose/animation/VeilModifierElement;->d:Landroidx/compose/animation/EnterTransition;

    .line 32
    .line 33
    iget-object v3, p1, Landroidx/compose/animation/VeilModifierElement;->d:Landroidx/compose/animation/EnterTransition;

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroidx/compose/animation/EnterTransition;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    iget-object v1, p0, Landroidx/compose/animation/VeilModifierElement;->e:Landroidx/compose/animation/ExitTransition;

    .line 43
    .line 44
    iget-object v3, p1, Landroidx/compose/animation/VeilModifierElement;->e:Landroidx/compose/animation/ExitTransition;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    :goto_0
    return v2

    .line 53
    :cond_5
    iget-object p0, p0, Landroidx/compose/animation/VeilModifierElement;->f:Landroidx/compose/animation/SharedMutableTransformState;

    .line 54
    .line 55
    iget-object p1, p1, Landroidx/compose/animation/VeilModifierElement;->f:Landroidx/compose/animation/SharedMutableTransformState;

    .line 56
    .line 57
    if-eq p0, p1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    return v0
.end method

.method public final g()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/animation/VeilModifierNode;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/animation/VeilModifierElement;->c:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 7
    .line 8
    iput-object v1, v0, Landroidx/compose/animation/VeilModifierNode;->x:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/animation/VeilModifierElement;->d:Landroidx/compose/animation/EnterTransition;

    .line 11
    .line 12
    iput-object v1, v0, Landroidx/compose/animation/VeilModifierNode;->y:Landroidx/compose/animation/EnterTransition;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/animation/VeilModifierElement;->e:Landroidx/compose/animation/ExitTransition;

    .line 15
    .line 16
    iput-object v1, v0, Landroidx/compose/animation/VeilModifierNode;->z:Landroidx/compose/animation/ExitTransition;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/animation/VeilModifierElement;->f:Landroidx/compose/animation/SharedMutableTransformState;

    .line 19
    .line 20
    iput-object p0, v0, Landroidx/compose/animation/VeilModifierNode;->A:Landroidx/compose/animation/SharedMutableTransformState;

    .line 21
    .line 22
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/VeilModifierElement;->b:Landroidx/compose/animation/core/TransitionInstance;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/animation/VeilModifierElement;->c:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/animation/VeilModifierElement;->d:Landroidx/compose/animation/EnterTransition;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/animation/EnterTransition;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/animation/VeilModifierElement;->e:Landroidx/compose/animation/ExitTransition;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/compose/animation/ExitTransition;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v1, v0

    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/compose/animation/VeilModifierElement;->f:Landroidx/compose/animation/SharedMutableTransformState;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    add-int/2addr p0, v1

    .line 43
    return p0
.end method

.method public final i(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/animation/VeilModifierNode;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/animation/VeilModifierElement;->c:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 7
    .line 8
    iput-object v0, p1, Landroidx/compose/animation/VeilModifierNode;->x:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/animation/VeilModifierElement;->d:Landroidx/compose/animation/EnterTransition;

    .line 11
    .line 12
    iput-object v0, p1, Landroidx/compose/animation/VeilModifierNode;->y:Landroidx/compose/animation/EnterTransition;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/animation/VeilModifierElement;->e:Landroidx/compose/animation/ExitTransition;

    .line 15
    .line 16
    iput-object v0, p1, Landroidx/compose/animation/VeilModifierNode;->z:Landroidx/compose/animation/ExitTransition;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/animation/VeilModifierElement;->f:Landroidx/compose/animation/SharedMutableTransformState;

    .line 19
    .line 20
    iput-object p0, p1, Landroidx/compose/animation/VeilModifierNode;->A:Landroidx/compose/animation/SharedMutableTransformState;

    .line 21
    .line 22
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VeilModifierElement(transition="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/animation/VeilModifierElement;->b:Landroidx/compose/animation/core/TransitionInstance;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", veilAnimation="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/animation/VeilModifierElement;->c:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", enter="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/animation/VeilModifierElement;->d:Landroidx/compose/animation/EnterTransition;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", exit="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroidx/compose/animation/VeilModifierElement;->e:Landroidx/compose/animation/ExitTransition;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mutableTransformState="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Landroidx/compose/animation/VeilModifierElement;->f:Landroidx/compose/animation/SharedMutableTransformState;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
