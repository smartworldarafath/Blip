.class public final Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;
.super Landroidx/compose/animation/core/KeyframesSpecBaseConfig;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/KeyframesSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyframesSpecConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/animation/core/KeyframesSpecBaseConfig<",
        "TT;",
        "Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity<",
        "TT;>;>;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Float;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Landroidx/compose/animation/core/KeyframeBaseEntity;-><init>(Ljava/lang/Float;Landroidx/compose/animation/core/Easing;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->b:Landroidx/collection/MutableIntObjectMap;

    .line 9
    .line 10
    invoke-virtual {p0, p2, v0}, Landroidx/collection/MutableIntObjectMap;->i(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
