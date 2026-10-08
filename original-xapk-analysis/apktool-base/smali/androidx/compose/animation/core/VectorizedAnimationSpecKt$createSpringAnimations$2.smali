.class public final Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/animation/core/Animations;


# instance fields
.field public final a:Landroidx/compose/animation/core/FloatSpringSpec;


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/animation/core/FloatSpringSpec;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2}, Landroidx/compose/animation/core/FloatSpringSpec;-><init>(FF)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$2;->a:Landroidx/compose/animation/core/FloatSpringSpec;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final get(I)Landroidx/compose/animation/core/FloatAnimationSpec;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt$createSpringAnimations$2;->a:Landroidx/compose/animation/core/FloatSpringSpec;

    .line 2
    .line 3
    return-object p0
.end method
