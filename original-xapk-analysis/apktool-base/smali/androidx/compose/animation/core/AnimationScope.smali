.class public final Landroidx/compose/animation/core/AnimationScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/compose/animation/core/TwoWayConverter;

.field public final b:Ljava/lang/Object;

.field public final c:J

.field public final d:Lkotlin/jvm/functions/Function0;

.field public final e:Landroidx/compose/runtime/MutableState;

.field public f:Landroidx/compose/animation/core/AnimationVector;

.field public g:J

.field public h:J

.field public final i:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationVector;JLjava/lang/Object;JLkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/animation/core/AnimationScope;->a:Landroidx/compose/animation/core/TwoWayConverter;

    .line 5
    .line 6
    iput-object p6, p0, Landroidx/compose/animation/core/AnimationScope;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-wide p7, p0, Landroidx/compose/animation/core/AnimationScope;->c:J

    .line 9
    .line 10
    iput-object p9, p0, Landroidx/compose/animation/core/AnimationScope;->d:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/compose/animation/core/AnimationScope;->e:Landroidx/compose/runtime/MutableState;

    .line 17
    .line 18
    invoke-static {p3}, Landroidx/compose/animation/core/AnimationVectorsKt;->a(Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Landroidx/compose/animation/core/AnimationScope;->f:Landroidx/compose/animation/core/AnimationVector;

    .line 23
    .line 24
    iput-wide p4, p0, Landroidx/compose/animation/core/AnimationScope;->g:J

    .line 25
    .line 26
    const-wide/high16 p1, -0x8000000000000000L

    .line 27
    .line 28
    iput-wide p1, p0, Landroidx/compose/animation/core/AnimationScope;->h:J

    .line 29
    .line 30
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Landroidx/compose/animation/core/AnimationScope;->i:Landroidx/compose/runtime/MutableState;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/animation/core/AnimationScope;->i:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/animation/core/AnimationScope;->d:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/AnimationScope;->a:Landroidx/compose/animation/core/TwoWayConverter;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/animation/core/TwoWayConverterImpl;->b:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/animation/core/AnimationScope;->f:Landroidx/compose/animation/core/AnimationVector;

    .line 8
    .line 9
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
