.class public final Landroidx/compose/animation/TransformScopeImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/runtime/MutableState;

.field public final b:Landroidx/compose/runtime/MutableFloatState;

.field public final c:Landroidx/compose/runtime/MutableState;

.field public final d:Landroidx/compose/runtime/MutableFloatState;

.field public final e:Landroidx/compose/runtime/MutableState;

.field public final f:Landroidx/compose/runtime/MutableState;

.field public final g:Landroidx/compose/runtime/MutableState;

.field public final h:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Landroidx/compose/animation/TransformScopeImpl;->a:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-static {v1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iput-object v2, p0, Landroidx/compose/animation/TransformScopeImpl;->b:Landroidx/compose/runtime/MutableFloatState;

    .line 19
    .line 20
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, p0, Landroidx/compose/animation/TransformScopeImpl;->c:Landroidx/compose/runtime/MutableState;

    .line 25
    .line 26
    invoke-static {v1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Landroidx/compose/animation/TransformScopeImpl;->d:Landroidx/compose/runtime/MutableFloatState;

    .line 31
    .line 32
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Landroidx/compose/animation/TransformScopeImpl;->e:Landroidx/compose/runtime/MutableState;

    .line 37
    .line 38
    sget-wide v1, Landroidx/compose/ui/graphics/TransformOrigin;->b:J

    .line 39
    .line 40
    new-instance v3, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 41
    .line 42
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Landroidx/compose/animation/TransformScopeImpl;->f:Landroidx/compose/runtime/MutableState;

    .line 50
    .line 51
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Landroidx/compose/animation/TransformScopeImpl;->g:Landroidx/compose/runtime/MutableState;

    .line 56
    .line 57
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->g:J

    .line 58
    .line 59
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    .line 60
    .line 61
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Landroidx/compose/animation/TransformScopeImpl;->h:Landroidx/compose/runtime/MutableState;

    .line 69
    .line 70
    return-void
.end method
