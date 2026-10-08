.class public final Landroidx/compose/ui/node/NodeChain;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/NodeChain$Differ;
    }
.end annotation


# instance fields
.field public final a:Landroidx/compose/ui/node/LayoutNode;

.field public final b:Landroidx/compose/ui/node/NodeChain$sentinelHead$1;

.field public final c:Landroidx/compose/ui/node/InnerNodeCoordinator;

.field public d:Landroidx/compose/ui/node/NodeCoordinator;

.field public final e:Landroidx/compose/ui/node/TailModifierNode;

.field public f:Landroidx/compose/ui/Modifier$Node;

.field public g:Landroidx/collection/MutableObjectList;

.field public h:Landroidx/collection/MutableObjectList;

.field public i:Landroidx/collection/MutableObjectList;

.field public j:Landroidx/compose/ui/node/NodeChain$Differ;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 5
    .line 6
    new-instance v0, Landroidx/compose/ui/node/NodeChain$sentinelHead$1;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, v0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->b:Landroidx/compose/ui/node/NodeChain$sentinelHead$1;

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Landroidx/compose/ui/node/InnerNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 24
    .line 25
    iget-object p1, v0, Landroidx/compose/ui/node/InnerNodeCoordinator;->l0:Landroidx/compose/ui/node/TailModifierNode;

    .line 26
    .line 27
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 30
    .line 31
    new-instance p1, Landroidx/collection/MutableObjectList;

    .line 32
    .line 33
    invoke-direct {p1}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->g:Landroidx/collection/MutableObjectList;

    .line 37
    .line 38
    return-void
.end method

.method public static final a(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    :goto_0
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->b:Landroidx/compose/ui/node/NodeChain$sentinelHead$1;

    .line 6
    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/ui/node/NodeChain;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 18
    .line 19
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_1
    iput-object p1, p2, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 24
    .line 25
    iput-object p2, p0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget v0, p1, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 29
    .line 30
    and-int/lit8 v0, v0, 0x2

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/compose/ui/Modifier$Node;->X0(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    :goto_2
    return-void
.end method

.method public static b(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 1
    instance-of v0, p0, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifierNodeElement;->g()Landroidx/compose/ui/Modifier$Node;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->f(Landroidx/compose/ui/Modifier$Node;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->d(Landroidx/compose/ui/Modifier$Element;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 28
    .line 29
    iput-object p0, v0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 30
    .line 31
    new-instance p0, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p0, v0, Landroidx/compose/ui/node/BackwardsCompatNode;->z:Ljava/util/HashSet;

    .line 37
    .line 38
    move-object p0, v0

    .line 39
    :goto_0
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const-string v0, "A ModifierNodeElement cannot return an already attached node from create() "

    .line 44
    .line 45
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->r:Z

    .line 50
    .line 51
    iget-object v0, p1, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iput-object p0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 56
    .line 57
    iput-object v0, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 58
    .line 59
    :cond_2
    iput-object p0, p1, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 60
    .line 61
    iput-object p1, p0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 62
    .line 63
    return-object p0
.end method

.method public static c(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/ui/node/NodeKindKt;->a:Landroidx/collection/MutableObjectIntMap;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "autoInvalidateRemovedNode called on unattached node"

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, -0x1

    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/NodeKindKt;->a(Landroidx/compose/ui/Modifier$Node;II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->V0()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->P0()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iput-object v1, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 33
    .line 34
    iput-object v2, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 35
    .line 36
    :cond_2
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iput-object v0, v1, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 39
    .line 40
    iput-object v2, p0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 41
    .line 42
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    return-object v1
.end method

.method public static h(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    .line 1
    instance-of p0, p0, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    instance-of p0, p1, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/ModifierNodeElement;->i(Landroidx/compose/ui/Modifier$Node;)V

    .line 16
    .line 17
    .line 18
    iget-boolean p0, p2, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-static {p2}, Landroidx/compose/ui/node/NodeKindKt;->c(Landroidx/compose/ui/Modifier$Node;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iput-boolean v0, p2, Landroidx/compose/ui/Modifier$Node;->s:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    instance-of p0, p2, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 30
    .line 31
    if-eqz p0, :cond_5

    .line 32
    .line 33
    move-object p0, p2

    .line 34
    check-cast p0, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 35
    .line 36
    iget-boolean v1, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->Z0()V

    .line 41
    .line 42
    .line 43
    :cond_2
    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->x:Landroidx/compose/ui/Modifier$Element;

    .line 44
    .line 45
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->d(Landroidx/compose/ui/Modifier$Element;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput p1, p0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 50
    .line 51
    iget-boolean p1, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/BackwardsCompatNode;->Y0(Z)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-boolean p0, p2, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 60
    .line 61
    if-eqz p0, :cond_4

    .line 62
    .line 63
    invoke-static {p2}, Landroidx/compose/ui/node/NodeKindKt;->c(Landroidx/compose/ui/Modifier$Node;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_4
    iput-boolean v0, p2, Landroidx/compose/ui/Modifier$Node;->s:Z

    .line 68
    .line 69
    return-void

    .line 70
    :cond_5
    const-string p0, "Unknown Modifier.Node type"

    .line 71
    .line 72
    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final d(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    iget p0, p0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 4
    .line 5
    and-int/2addr p0, p1

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    :goto_0
    if-eqz p0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->U0()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->r:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/ui/node/NodeKindKt;->a:Landroidx/collection/MutableObjectIntMap;

    .line 13
    .line 14
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "autoInvalidateInsertedNode called on unattached node"

    .line 19
    .line 20
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v0, -0x1

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/NodeKindKt;->a(Landroidx/compose/ui/Modifier$Node;II)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->s:Z

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->c(Landroidx/compose/ui/Modifier$Node;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->r:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->s:Z

    .line 39
    .line 40
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    return-void
.end method

.method public final f(ILandroidx/collection/MutableObjectList;Landroidx/collection/MutableObjectList;Landroidx/compose/ui/Modifier$Node;Z)V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroidx/compose/ui/node/NodeChain;->j:Landroidx/compose/ui/node/NodeChain$Differ;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/node/NodeChain$Differ;

    .line 8
    .line 9
    move/from16 v3, p1

    .line 10
    .line 11
    move-object/from16 v4, p2

    .line 12
    .line 13
    move-object/from16 v5, p3

    .line 14
    .line 15
    move-object/from16 v2, p4

    .line 16
    .line 17
    move/from16 v6, p5

    .line 18
    .line 19
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/node/NodeChain$Differ;-><init>(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;ILandroidx/collection/MutableObjectList;Landroidx/collection/MutableObjectList;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, v1, Landroidx/compose/ui/node/NodeChain;->j:Landroidx/compose/ui/node/NodeChain$Differ;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move/from16 v3, p1

    .line 26
    .line 27
    move-object/from16 v4, p2

    .line 28
    .line 29
    move-object/from16 v5, p3

    .line 30
    .line 31
    move-object/from16 v2, p4

    .line 32
    .line 33
    iput-object v2, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 34
    .line 35
    iput v3, v0, Landroidx/compose/ui/node/NodeChain$Differ;->b:I

    .line 36
    .line 37
    iput-object v4, v0, Landroidx/compose/ui/node/NodeChain$Differ;->c:Landroidx/collection/MutableObjectList;

    .line 38
    .line 39
    iput-object v5, v0, Landroidx/compose/ui/node/NodeChain$Differ;->d:Landroidx/collection/MutableObjectList;

    .line 40
    .line 41
    move/from16 v6, p5

    .line 42
    .line 43
    iput-boolean v6, v0, Landroidx/compose/ui/node/NodeChain$Differ;->e:Z

    .line 44
    .line 45
    :goto_0
    iget-object v2, v0, Landroidx/compose/ui/node/NodeChain$Differ;->f:Landroidx/compose/ui/node/NodeChain;

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    iput-object v6, v1, Landroidx/compose/ui/node/NodeChain;->j:Landroidx/compose/ui/node/NodeChain$Differ;

    .line 49
    .line 50
    iget v4, v4, Landroidx/collection/ObjectList;->b:I

    .line 51
    .line 52
    sub-int/2addr v4, v3

    .line 53
    iget v5, v5, Landroidx/collection/ObjectList;->b:I

    .line 54
    .line 55
    sub-int/2addr v5, v3

    .line 56
    add-int v3, v4, v5

    .line 57
    .line 58
    const/4 v6, 0x1

    .line 59
    add-int/2addr v3, v6

    .line 60
    const/4 v7, 0x2

    .line 61
    div-int/2addr v3, v7

    .line 62
    new-instance v8, Landroidx/compose/ui/node/IntStack;

    .line 63
    .line 64
    mul-int/lit8 v9, v3, 0x3

    .line 65
    .line 66
    invoke-direct {v8, v9}, Landroidx/compose/ui/node/IntStack;-><init>(I)V

    .line 67
    .line 68
    .line 69
    new-instance v9, Landroidx/compose/ui/node/IntStack;

    .line 70
    .line 71
    mul-int/lit8 v10, v3, 0x4

    .line 72
    .line 73
    invoke-direct {v9, v10}, Landroidx/compose/ui/node/IntStack;-><init>(I)V

    .line 74
    .line 75
    .line 76
    const/4 v10, 0x0

    .line 77
    invoke-virtual {v9, v10, v4, v10, v5}, Landroidx/compose/ui/node/IntStack;->b(IIII)V

    .line 78
    .line 79
    .line 80
    mul-int/2addr v3, v7

    .line 81
    add-int/2addr v3, v6

    .line 82
    new-array v11, v3, [I

    .line 83
    .line 84
    new-array v12, v3, [I

    .line 85
    .line 86
    const/4 v13, 0x5

    .line 87
    new-array v13, v13, [I

    .line 88
    .line 89
    :goto_1
    iget v14, v9, Landroidx/compose/ui/node/IntStack;->b:I

    .line 90
    .line 91
    if-eqz v14, :cond_1d

    .line 92
    .line 93
    move/from16 p1, v7

    .line 94
    .line 95
    iget-object v7, v9, Landroidx/compose/ui/node/IntStack;->a:[I

    .line 96
    .line 97
    move/from16 p2, v10

    .line 98
    .line 99
    add-int/lit8 v10, v14, -0x1

    .line 100
    .line 101
    iput v10, v9, Landroidx/compose/ui/node/IntStack;->b:I

    .line 102
    .line 103
    aget v10, v7, v10

    .line 104
    .line 105
    const/16 p3, 0x3

    .line 106
    .line 107
    add-int/lit8 v15, v14, -0x2

    .line 108
    .line 109
    iput v15, v9, Landroidx/compose/ui/node/IntStack;->b:I

    .line 110
    .line 111
    aget v15, v7, v15

    .line 112
    .line 113
    add-int/lit8 v6, v14, -0x3

    .line 114
    .line 115
    iput v6, v9, Landroidx/compose/ui/node/IntStack;->b:I

    .line 116
    .line 117
    aget v6, v7, v6

    .line 118
    .line 119
    add-int/lit8 v14, v14, -0x4

    .line 120
    .line 121
    iput v14, v9, Landroidx/compose/ui/node/IntStack;->b:I

    .line 122
    .line 123
    aget v7, v7, v14

    .line 124
    .line 125
    sub-int v14, v6, v7

    .line 126
    .line 127
    move/from16 p5, v3

    .line 128
    .line 129
    sub-int v3, v10, v15

    .line 130
    .line 131
    move-object/from16 v16, v11

    .line 132
    .line 133
    const/4 v11, 0x1

    .line 134
    if-lt v14, v11, :cond_1c

    .line 135
    .line 136
    if-ge v3, v11, :cond_1

    .line 137
    .line 138
    goto/16 :goto_19

    .line 139
    .line 140
    :cond_1
    add-int v17, v14, v3

    .line 141
    .line 142
    add-int/lit8 v17, v17, 0x1

    .line 143
    .line 144
    move/from16 p4, v11

    .line 145
    .line 146
    div-int/lit8 v11, v17, 0x2

    .line 147
    .line 148
    div-int/lit8 v17, p5, 0x2

    .line 149
    .line 150
    add-int/lit8 v18, v17, 0x1

    .line 151
    .line 152
    aput v7, v16, v18

    .line 153
    .line 154
    aput v6, v12, v18

    .line 155
    .line 156
    move/from16 v18, v3

    .line 157
    .line 158
    move/from16 v3, p2

    .line 159
    .line 160
    :goto_2
    if-ge v3, v11, :cond_1c

    .line 161
    .line 162
    sub-int v19, v14, v18

    .line 163
    .line 164
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    .line 165
    .line 166
    .line 167
    move-result v20

    .line 168
    move/from16 v21, v11

    .line 169
    .line 170
    and-int/lit8 v11, v20, 0x1

    .line 171
    .line 172
    move-object/from16 v20, v12

    .line 173
    .line 174
    move/from16 v12, p4

    .line 175
    .line 176
    if-ne v11, v12, :cond_2

    .line 177
    .line 178
    const/4 v11, 0x1

    .line 179
    goto :goto_3

    .line 180
    :cond_2
    move/from16 v11, p2

    .line 181
    .line 182
    :goto_3
    neg-int v12, v3

    .line 183
    move/from16 v22, v11

    .line 184
    .line 185
    move v11, v12

    .line 186
    :goto_4
    const/16 v23, 0x4

    .line 187
    .line 188
    if-gt v11, v3, :cond_b

    .line 189
    .line 190
    if-eq v11, v12, :cond_5

    .line 191
    .line 192
    if-eq v11, v3, :cond_3

    .line 193
    .line 194
    add-int/lit8 v24, v11, 0x1

    .line 195
    .line 196
    add-int v24, v24, v17

    .line 197
    .line 198
    move/from16 v25, v11

    .line 199
    .line 200
    aget v11, v16, v24

    .line 201
    .line 202
    add-int/lit8 v24, v25, -0x1

    .line 203
    .line 204
    add-int v24, v24, v17

    .line 205
    .line 206
    move-object/from16 v26, v13

    .line 207
    .line 208
    aget v13, v16, v24

    .line 209
    .line 210
    if-le v11, v13, :cond_4

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_3
    move/from16 v25, v11

    .line 214
    .line 215
    move-object/from16 v26, v13

    .line 216
    .line 217
    :cond_4
    add-int/lit8 v11, v25, -0x1

    .line 218
    .line 219
    add-int v11, v11, v17

    .line 220
    .line 221
    aget v11, v16, v11

    .line 222
    .line 223
    add-int/lit8 v13, v11, 0x1

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_5
    move/from16 v25, v11

    .line 227
    .line 228
    move-object/from16 v26, v13

    .line 229
    .line 230
    :goto_5
    add-int/lit8 v11, v25, 0x1

    .line 231
    .line 232
    add-int v11, v11, v17

    .line 233
    .line 234
    aget v11, v16, v11

    .line 235
    .line 236
    move v13, v11

    .line 237
    :goto_6
    sub-int v24, v13, v7

    .line 238
    .line 239
    add-int v24, v24, v15

    .line 240
    .line 241
    sub-int v24, v24, v25

    .line 242
    .line 243
    if-eqz v3, :cond_6

    .line 244
    .line 245
    const/16 v27, 0x1

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_6
    move/from16 v27, p2

    .line 249
    .line 250
    :goto_7
    if-ne v13, v11, :cond_7

    .line 251
    .line 252
    const/16 v28, 0x1

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_7
    move/from16 v28, p2

    .line 256
    .line 257
    :goto_8
    and-int v27, v27, v28

    .line 258
    .line 259
    sub-int v27, v24, v27

    .line 260
    .line 261
    move/from16 v30, v24

    .line 262
    .line 263
    move/from16 v24, v11

    .line 264
    .line 265
    move/from16 v11, v30

    .line 266
    .line 267
    :goto_9
    if-ge v13, v6, :cond_8

    .line 268
    .line 269
    if-ge v11, v10, :cond_8

    .line 270
    .line 271
    invoke-virtual {v0, v13, v11}, Landroidx/compose/ui/node/NodeChain$Differ;->a(II)Z

    .line 272
    .line 273
    .line 274
    move-result v28

    .line 275
    if-eqz v28, :cond_8

    .line 276
    .line 277
    add-int/lit8 v13, v13, 0x1

    .line 278
    .line 279
    add-int/lit8 v11, v11, 0x1

    .line 280
    .line 281
    goto :goto_9

    .line 282
    :cond_8
    add-int v28, v17, v25

    .line 283
    .line 284
    aput v13, v16, v28

    .line 285
    .line 286
    if-eqz v22, :cond_9

    .line 287
    .line 288
    move/from16 v28, v11

    .line 289
    .line 290
    sub-int v11, v19, v25

    .line 291
    .line 292
    move/from16 v29, v14

    .line 293
    .line 294
    add-int/lit8 v14, v12, 0x1

    .line 295
    .line 296
    if-lt v11, v14, :cond_a

    .line 297
    .line 298
    add-int/lit8 v14, v3, -0x1

    .line 299
    .line 300
    if-gt v11, v14, :cond_a

    .line 301
    .line 302
    add-int v11, v17, v11

    .line 303
    .line 304
    aget v11, v20, v11

    .line 305
    .line 306
    if-gt v11, v13, :cond_a

    .line 307
    .line 308
    aput v24, v26, p2

    .line 309
    .line 310
    const/4 v11, 0x1

    .line 311
    aput v27, v26, v11

    .line 312
    .line 313
    aput v13, v26, p1

    .line 314
    .line 315
    aput v28, v26, p3

    .line 316
    .line 317
    aput p2, v26, v23

    .line 318
    .line 319
    const/4 v11, 0x1

    .line 320
    goto/16 :goto_11

    .line 321
    .line 322
    :cond_9
    move/from16 v29, v14

    .line 323
    .line 324
    :cond_a
    add-int/lit8 v11, v25, 0x2

    .line 325
    .line 326
    move-object/from16 v13, v26

    .line 327
    .line 328
    move/from16 v14, v29

    .line 329
    .line 330
    goto/16 :goto_4

    .line 331
    .line 332
    :cond_b
    move-object/from16 v26, v13

    .line 333
    .line 334
    move/from16 v29, v14

    .line 335
    .line 336
    and-int/lit8 v11, v19, 0x1

    .line 337
    .line 338
    if-nez v11, :cond_c

    .line 339
    .line 340
    const/4 v11, 0x1

    .line 341
    goto :goto_a

    .line 342
    :cond_c
    move/from16 v11, p2

    .line 343
    .line 344
    :goto_a
    move v13, v12

    .line 345
    :goto_b
    if-gt v13, v3, :cond_1b

    .line 346
    .line 347
    if-eq v13, v12, :cond_f

    .line 348
    .line 349
    if-eq v13, v3, :cond_d

    .line 350
    .line 351
    add-int/lit8 v14, v13, 0x1

    .line 352
    .line 353
    add-int v14, v14, v17

    .line 354
    .line 355
    aget v14, v20, v14

    .line 356
    .line 357
    add-int/lit8 v22, v13, -0x1

    .line 358
    .line 359
    add-int v22, v22, v17

    .line 360
    .line 361
    move/from16 v24, v11

    .line 362
    .line 363
    aget v11, v20, v22

    .line 364
    .line 365
    if-ge v14, v11, :cond_e

    .line 366
    .line 367
    goto :goto_c

    .line 368
    :cond_d
    move/from16 v24, v11

    .line 369
    .line 370
    :cond_e
    add-int/lit8 v11, v13, -0x1

    .line 371
    .line 372
    add-int v11, v11, v17

    .line 373
    .line 374
    aget v11, v20, v11

    .line 375
    .line 376
    add-int/lit8 v14, v11, -0x1

    .line 377
    .line 378
    goto :goto_d

    .line 379
    :cond_f
    move/from16 v24, v11

    .line 380
    .line 381
    :goto_c
    add-int/lit8 v11, v13, 0x1

    .line 382
    .line 383
    add-int v11, v11, v17

    .line 384
    .line 385
    aget v11, v20, v11

    .line 386
    .line 387
    move v14, v11

    .line 388
    :goto_d
    sub-int v22, v6, v14

    .line 389
    .line 390
    sub-int v22, v22, v13

    .line 391
    .line 392
    sub-int v22, v10, v22

    .line 393
    .line 394
    if-eqz v3, :cond_10

    .line 395
    .line 396
    const/16 v25, 0x1

    .line 397
    .line 398
    goto :goto_e

    .line 399
    :cond_10
    move/from16 v25, p2

    .line 400
    .line 401
    :goto_e
    if-ne v14, v11, :cond_11

    .line 402
    .line 403
    const/16 v27, 0x1

    .line 404
    .line 405
    goto :goto_f

    .line 406
    :cond_11
    move/from16 v27, p2

    .line 407
    .line 408
    :goto_f
    and-int v25, v25, v27

    .line 409
    .line 410
    add-int v25, v22, v25

    .line 411
    .line 412
    move/from16 v30, v22

    .line 413
    .line 414
    move/from16 v22, v11

    .line 415
    .line 416
    move/from16 v11, v30

    .line 417
    .line 418
    :goto_10
    if-le v14, v7, :cond_12

    .line 419
    .line 420
    if-le v11, v15, :cond_12

    .line 421
    .line 422
    move/from16 v27, v11

    .line 423
    .line 424
    add-int/lit8 v11, v14, -0x1

    .line 425
    .line 426
    move/from16 v28, v13

    .line 427
    .line 428
    add-int/lit8 v13, v27, -0x1

    .line 429
    .line 430
    invoke-virtual {v0, v11, v13}, Landroidx/compose/ui/node/NodeChain$Differ;->a(II)Z

    .line 431
    .line 432
    .line 433
    move-result v11

    .line 434
    if-eqz v11, :cond_13

    .line 435
    .line 436
    add-int/lit8 v14, v14, -0x1

    .line 437
    .line 438
    add-int/lit8 v11, v27, -0x1

    .line 439
    .line 440
    move/from16 v13, v28

    .line 441
    .line 442
    goto :goto_10

    .line 443
    :cond_12
    move/from16 v27, v11

    .line 444
    .line 445
    move/from16 v28, v13

    .line 446
    .line 447
    :cond_13
    add-int v13, v17, v28

    .line 448
    .line 449
    aput v14, v20, v13

    .line 450
    .line 451
    if-eqz v24, :cond_1a

    .line 452
    .line 453
    sub-int v11, v19, v28

    .line 454
    .line 455
    if-lt v11, v12, :cond_1a

    .line 456
    .line 457
    if-gt v11, v3, :cond_1a

    .line 458
    .line 459
    add-int v11, v17, v11

    .line 460
    .line 461
    aget v11, v16, v11

    .line 462
    .line 463
    if-lt v11, v14, :cond_1a

    .line 464
    .line 465
    aput v14, v26, p2

    .line 466
    .line 467
    const/4 v11, 0x1

    .line 468
    aput v27, v26, v11

    .line 469
    .line 470
    aput v22, v26, p1

    .line 471
    .line 472
    aput v25, v26, p3

    .line 473
    .line 474
    aput v11, v26, v23

    .line 475
    .line 476
    :goto_11
    aget v3, v26, p1

    .line 477
    .line 478
    aget v12, v26, p2

    .line 479
    .line 480
    sub-int/2addr v3, v12

    .line 481
    aget v12, v26, p3

    .line 482
    .line 483
    aget v13, v26, v11

    .line 484
    .line 485
    sub-int/2addr v12, v13

    .line 486
    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    if-lez v3, :cond_19

    .line 491
    .line 492
    aget v3, v26, p2

    .line 493
    .line 494
    aget v12, v26, v11

    .line 495
    .line 496
    aget v11, v26, p3

    .line 497
    .line 498
    sub-int/2addr v11, v12

    .line 499
    aget v13, v26, p1

    .line 500
    .line 501
    sub-int/2addr v13, v3

    .line 502
    if-eq v11, v13, :cond_18

    .line 503
    .line 504
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    .line 505
    .line 506
    .line 507
    move-result v13

    .line 508
    aget v11, v26, v23

    .line 509
    .line 510
    if-eqz v11, :cond_14

    .line 511
    .line 512
    const/4 v14, 0x1

    .line 513
    goto :goto_12

    .line 514
    :cond_14
    move/from16 v14, p2

    .line 515
    .line 516
    :goto_12
    aget v17, v26, p3

    .line 517
    .line 518
    const/16 v18, 0x1

    .line 519
    .line 520
    aget v19, v26, v18

    .line 521
    .line 522
    move/from16 p4, v3

    .line 523
    .line 524
    sub-int v3, v17, v19

    .line 525
    .line 526
    aget v21, v26, p1

    .line 527
    .line 528
    aget v22, v26, p2

    .line 529
    .line 530
    move/from16 v23, v11

    .line 531
    .line 532
    sub-int v11, v21, v22

    .line 533
    .line 534
    if-le v3, v11, :cond_15

    .line 535
    .line 536
    move/from16 v3, v18

    .line 537
    .line 538
    goto :goto_13

    .line 539
    :cond_15
    move/from16 v3, p2

    .line 540
    .line 541
    :goto_13
    or-int/2addr v3, v14

    .line 542
    xor-int/lit8 v3, v3, 0x1

    .line 543
    .line 544
    add-int v3, p4, v3

    .line 545
    .line 546
    if-eqz v23, :cond_16

    .line 547
    .line 548
    move/from16 v11, v18

    .line 549
    .line 550
    goto :goto_14

    .line 551
    :cond_16
    move/from16 v11, p2

    .line 552
    .line 553
    :goto_14
    sub-int v14, v17, v19

    .line 554
    .line 555
    move/from16 p4, v3

    .line 556
    .line 557
    sub-int v3, v21, v22

    .line 558
    .line 559
    if-le v14, v3, :cond_17

    .line 560
    .line 561
    move/from16 v3, v18

    .line 562
    .line 563
    goto :goto_15

    .line 564
    :cond_17
    move/from16 v3, p2

    .line 565
    .line 566
    :goto_15
    xor-int/lit8 v3, v3, 0x1

    .line 567
    .line 568
    or-int/2addr v3, v11

    .line 569
    xor-int/lit8 v3, v3, 0x1

    .line 570
    .line 571
    add-int/2addr v12, v3

    .line 572
    move/from16 v3, p4

    .line 573
    .line 574
    goto :goto_16

    .line 575
    :cond_18
    move/from16 p4, v3

    .line 576
    .line 577
    const/16 v18, 0x1

    .line 578
    .line 579
    :goto_16
    invoke-virtual {v8, v3, v12, v13}, Landroidx/compose/ui/node/IntStack;->a(III)V

    .line 580
    .line 581
    .line 582
    goto :goto_17

    .line 583
    :cond_19
    move/from16 v18, v11

    .line 584
    .line 585
    :goto_17
    aget v3, v26, p2

    .line 586
    .line 587
    aget v11, v26, v18

    .line 588
    .line 589
    invoke-virtual {v9, v7, v3, v15, v11}, Landroidx/compose/ui/node/IntStack;->b(IIII)V

    .line 590
    .line 591
    .line 592
    aget v3, v26, p1

    .line 593
    .line 594
    aget v7, v26, p3

    .line 595
    .line 596
    invoke-virtual {v9, v3, v6, v7, v10}, Landroidx/compose/ui/node/IntStack;->b(IIII)V

    .line 597
    .line 598
    .line 599
    :goto_18
    move/from16 v7, p1

    .line 600
    .line 601
    move/from16 v10, p2

    .line 602
    .line 603
    move/from16 v3, p5

    .line 604
    .line 605
    move-object/from16 v11, v16

    .line 606
    .line 607
    move-object/from16 v12, v20

    .line 608
    .line 609
    move-object/from16 v13, v26

    .line 610
    .line 611
    const/4 v6, 0x1

    .line 612
    goto/16 :goto_1

    .line 613
    .line 614
    :cond_1a
    add-int/lit8 v13, v28, 0x2

    .line 615
    .line 616
    move/from16 v11, v24

    .line 617
    .line 618
    goto/16 :goto_b

    .line 619
    .line 620
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    .line 621
    .line 622
    move-object/from16 v12, v20

    .line 623
    .line 624
    move/from16 v11, v21

    .line 625
    .line 626
    move-object/from16 v13, v26

    .line 627
    .line 628
    move/from16 v14, v29

    .line 629
    .line 630
    const/16 p4, 0x1

    .line 631
    .line 632
    goto/16 :goto_2

    .line 633
    .line 634
    :cond_1c
    :goto_19
    move-object/from16 v20, v12

    .line 635
    .line 636
    move-object/from16 v26, v13

    .line 637
    .line 638
    goto :goto_18

    .line 639
    :cond_1d
    move/from16 p1, v7

    .line 640
    .line 641
    move/from16 p2, v10

    .line 642
    .line 643
    const/16 p3, 0x3

    .line 644
    .line 645
    iget v3, v8, Landroidx/compose/ui/node/IntStack;->b:I

    .line 646
    .line 647
    rem-int/lit8 v6, v3, 0x3

    .line 648
    .line 649
    if-nez v6, :cond_1e

    .line 650
    .line 651
    :goto_1a
    move/from16 v6, p3

    .line 652
    .line 653
    goto :goto_1b

    .line 654
    :cond_1e
    const-string v6, "Array size not a multiple of 3"

    .line 655
    .line 656
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    goto :goto_1a

    .line 660
    :goto_1b
    if-le v3, v6, :cond_1f

    .line 661
    .line 662
    sub-int/2addr v3, v6

    .line 663
    move/from16 v6, p2

    .line 664
    .line 665
    invoke-virtual {v8, v6, v3}, Landroidx/compose/ui/node/IntStack;->c(II)V

    .line 666
    .line 667
    .line 668
    goto :goto_1c

    .line 669
    :cond_1f
    move/from16 v6, p2

    .line 670
    .line 671
    :goto_1c
    invoke-virtual {v8, v4, v5, v6}, Landroidx/compose/ui/node/IntStack;->a(III)V

    .line 672
    .line 673
    .line 674
    move v3, v6

    .line 675
    move v4, v3

    .line 676
    move v5, v4

    .line 677
    :cond_20
    iget v7, v8, Landroidx/compose/ui/node/IntStack;->b:I

    .line 678
    .line 679
    if-ge v3, v7, :cond_29

    .line 680
    .line 681
    iget-object v7, v8, Landroidx/compose/ui/node/IntStack;->a:[I

    .line 682
    .line 683
    aget v9, v7, v3

    .line 684
    .line 685
    add-int/lit8 v10, v3, 0x2

    .line 686
    .line 687
    aget v10, v7, v10

    .line 688
    .line 689
    sub-int/2addr v9, v10

    .line 690
    add-int/lit8 v11, v3, 0x1

    .line 691
    .line 692
    aget v7, v7, v11

    .line 693
    .line 694
    sub-int/2addr v7, v10

    .line 695
    add-int/lit8 v3, v3, 0x3

    .line 696
    .line 697
    :goto_1d
    if-ge v4, v9, :cond_23

    .line 698
    .line 699
    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 700
    .line 701
    iget-object v11, v11, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 702
    .line 703
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 704
    .line 705
    .line 706
    iget v12, v11, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 707
    .line 708
    and-int/lit8 v12, v12, 0x2

    .line 709
    .line 710
    if-eqz v12, :cond_22

    .line 711
    .line 712
    iget-object v12, v11, Landroidx/compose/ui/Modifier$Node;->q:Landroidx/compose/ui/node/NodeCoordinator;

    .line 713
    .line 714
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 715
    .line 716
    .line 717
    iget-object v13, v12, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 718
    .line 719
    iget-object v12, v12, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 720
    .line 721
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 722
    .line 723
    .line 724
    if-eqz v13, :cond_21

    .line 725
    .line 726
    iput-object v12, v13, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 727
    .line 728
    :cond_21
    iput-object v13, v12, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 729
    .line 730
    iget-object v13, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 731
    .line 732
    invoke-static {v2, v13, v12}, Landroidx/compose/ui/node/NodeChain;->a(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 733
    .line 734
    .line 735
    :cond_22
    invoke-static {v11}, Landroidx/compose/ui/node/NodeChain;->c(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    .line 736
    .line 737
    .line 738
    move-result-object v11

    .line 739
    iput-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 740
    .line 741
    add-int/lit8 v4, v4, 0x1

    .line 742
    .line 743
    goto :goto_1d

    .line 744
    :cond_23
    :goto_1e
    if-ge v5, v7, :cond_27

    .line 745
    .line 746
    iget v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->b:I

    .line 747
    .line 748
    add-int/2addr v9, v5

    .line 749
    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 750
    .line 751
    iget-object v12, v0, Landroidx/compose/ui/node/NodeChain$Differ;->d:Landroidx/collection/MutableObjectList;

    .line 752
    .line 753
    invoke-virtual {v12, v9}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v9

    .line 757
    check-cast v9, Landroidx/compose/ui/Modifier$Element;

    .line 758
    .line 759
    invoke-static {v9, v11}, Landroidx/compose/ui/node/NodeChain;->b(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    .line 760
    .line 761
    .line 762
    move-result-object v9

    .line 763
    iput-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 764
    .line 765
    iget-boolean v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->e:Z

    .line 766
    .line 767
    if-eqz v11, :cond_26

    .line 768
    .line 769
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 770
    .line 771
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 772
    .line 773
    .line 774
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->q:Landroidx/compose/ui/node/NodeCoordinator;

    .line 775
    .line 776
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    .line 778
    .line 779
    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 780
    .line 781
    invoke-static {v11}, Landroidx/compose/ui/node/DelegatableNodeKt;->c(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/node/LayoutModifierNode;

    .line 782
    .line 783
    .line 784
    move-result-object v11

    .line 785
    if-eqz v11, :cond_24

    .line 786
    .line 787
    new-instance v12, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .line 788
    .line 789
    iget-object v13, v2, Landroidx/compose/ui/node/NodeChain;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 790
    .line 791
    invoke-direct {v12, v13, v11}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 792
    .line 793
    .line 794
    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 795
    .line 796
    invoke-virtual {v11, v12}, Landroidx/compose/ui/Modifier$Node;->X0(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 797
    .line 798
    .line 799
    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 800
    .line 801
    invoke-static {v2, v11, v12}, Landroidx/compose/ui/node/NodeChain;->a(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 802
    .line 803
    .line 804
    iget-object v11, v9, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 805
    .line 806
    iput-object v11, v12, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 807
    .line 808
    iput-object v9, v12, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 809
    .line 810
    iput-object v12, v9, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 811
    .line 812
    goto :goto_1f

    .line 813
    :cond_24
    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 814
    .line 815
    invoke-virtual {v11, v9}, Landroidx/compose/ui/Modifier$Node;->X0(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 816
    .line 817
    .line 818
    :goto_1f
    iget-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 819
    .line 820
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->O0()V

    .line 821
    .line 822
    .line 823
    iget-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 824
    .line 825
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->U0()V

    .line 826
    .line 827
    .line 828
    iget-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 829
    .line 830
    sget-object v11, Landroidx/compose/ui/node/NodeKindKt;->a:Landroidx/collection/MutableObjectIntMap;

    .line 831
    .line 832
    iget-boolean v11, v9, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 833
    .line 834
    if-nez v11, :cond_25

    .line 835
    .line 836
    const-string v11, "autoInvalidateInsertedNode called on unattached node"

    .line 837
    .line 838
    invoke-static {v11}, Landroidx/compose/ui/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    :cond_25
    const/4 v11, -0x1

    .line 842
    const/4 v12, 0x1

    .line 843
    invoke-static {v9, v11, v12}, Landroidx/compose/ui/node/NodeKindKt;->a(Landroidx/compose/ui/Modifier$Node;II)V

    .line 844
    .line 845
    .line 846
    goto :goto_20

    .line 847
    :cond_26
    const/4 v12, 0x1

    .line 848
    iput-boolean v12, v9, Landroidx/compose/ui/Modifier$Node;->r:Z

    .line 849
    .line 850
    :goto_20
    add-int/lit8 v5, v5, 0x1

    .line 851
    .line 852
    goto :goto_1e

    .line 853
    :cond_27
    const/4 v12, 0x1

    .line 854
    :goto_21
    add-int/lit8 v7, v10, -0x1

    .line 855
    .line 856
    if-lez v10, :cond_20

    .line 857
    .line 858
    iget-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 859
    .line 860
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 861
    .line 862
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 863
    .line 864
    .line 865
    iput-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 866
    .line 867
    iget-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->c:Landroidx/collection/MutableObjectList;

    .line 868
    .line 869
    iget v10, v0, Landroidx/compose/ui/node/NodeChain$Differ;->b:I

    .line 870
    .line 871
    add-int/2addr v10, v4

    .line 872
    invoke-virtual {v9, v10}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v9

    .line 876
    check-cast v9, Landroidx/compose/ui/Modifier$Element;

    .line 877
    .line 878
    iget-object v10, v0, Landroidx/compose/ui/node/NodeChain$Differ;->d:Landroidx/collection/MutableObjectList;

    .line 879
    .line 880
    iget v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->b:I

    .line 881
    .line 882
    add-int/2addr v11, v5

    .line 883
    invoke-virtual {v10, v11}, Landroidx/collection/ObjectList;->b(I)Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v10

    .line 887
    check-cast v10, Landroidx/compose/ui/Modifier$Element;

    .line 888
    .line 889
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 890
    .line 891
    .line 892
    move-result v11

    .line 893
    if-nez v11, :cond_28

    .line 894
    .line 895
    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->a:Landroidx/compose/ui/Modifier$Node;

    .line 896
    .line 897
    invoke-static {v9, v10, v11}, Landroidx/compose/ui/node/NodeChain;->h(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    .line 898
    .line 899
    .line 900
    :cond_28
    add-int/lit8 v4, v4, 0x1

    .line 901
    .line 902
    add-int/lit8 v5, v5, 0x1

    .line 903
    .line 904
    move v10, v7

    .line 905
    goto :goto_21

    .line 906
    :cond_29
    iput-object v0, v1, Landroidx/compose/ui/node/NodeChain;->j:Landroidx/compose/ui/node/NodeChain$Differ;

    .line 907
    .line 908
    iget-object v0, v1, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 909
    .line 910
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 911
    .line 912
    move v10, v6

    .line 913
    :goto_22
    if-eqz v0, :cond_2a

    .line 914
    .line 915
    iget-object v2, v1, Landroidx/compose/ui/node/NodeChain;->b:Landroidx/compose/ui/node/NodeChain$sentinelHead$1;

    .line 916
    .line 917
    if-eq v0, v2, :cond_2a

    .line 918
    .line 919
    iget v2, v0, Landroidx/compose/ui/Modifier$Node;->l:I

    .line 920
    .line 921
    or-int/2addr v10, v2

    .line 922
    iput v10, v0, Landroidx/compose/ui/Modifier$Node;->m:I

    .line 923
    .line 924
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 925
    .line 926
    goto :goto_22

    .line 927
    :cond_2a
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 6
    .line 7
    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/node/NodeChain;->a:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->c(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/node/LayoutModifierNode;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eqz v3, :cond_2

    .line 16
    .line 17
    iget-object v4, v0, Landroidx/compose/ui/Modifier$Node;->q:Landroidx/compose/ui/node/NodeCoordinator;

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    check-cast v4, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .line 22
    .line 23
    iget-object v2, v4, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->l0:Landroidx/compose/ui/node/LayoutModifierNode;

    .line 24
    .line 25
    invoke-virtual {v4, v3}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->H1(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 26
    .line 27
    .line 28
    if-eq v2, v0, :cond_1

    .line 29
    .line 30
    iget-object v2, v4, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    check-cast v2, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->c()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance v4, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .line 41
    .line 42
    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Landroidx/compose/ui/Modifier$Node;->X0(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_1
    iput-object v4, v1, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 49
    .line 50
    iput-object v1, v4, Landroidx/compose/ui/node/NodeCoordinator;->E:Landroidx/compose/ui/node/NodeCoordinator;

    .line 51
    .line 52
    move-object v1, v4

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/compose/ui/Modifier$Node;->X0(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 55
    .line 56
    .line 57
    :goto_2
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->n:Landroidx/compose/ui/Modifier$Node;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 67
    .line 68
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->c:Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/4 v0, 0x0

    .line 72
    :goto_3
    iput-object v0, v1, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/NodeCoordinator;

    .line 73
    .line 74
    iput-object v1, p0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 75
    .line 76
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    .line 9
    .line 10
    const-string v2, "]"

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    .line 13
    .line 14
    if-ne v1, p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 21
    .line 22
    if-eq v1, p0, :cond_2

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v3, v1, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 32
    .line 33
    if-ne v3, p0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string v3, ","

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->o:Landroidx/compose/ui/Modifier$Node;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method
