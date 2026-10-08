.class public abstract Lcoil3/compose/internal/UtilsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:J

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-static {v0, v0, v0, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Lcoil3/compose/internal/UtilsKt;->a:J

    .line 8
    .line 9
    return-void
.end method

.method public static final a()Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 1

    .line 1
    sget-object v0, Lcoil3/compose/internal/UtilsKt$UseMinConstraintsMeasurePolicy$1;->a:Lcoil3/compose/internal/UtilsKt$UseMinConstraintsMeasurePolicy$1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b(Landroidx/compose/runtime/Composer;)Lcoil3/compose/AsyncImagePreviewHandler;
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/InspectionModeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const v0, 0x7857f7a4

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcoil3/compose/LocalAsyncImagePreviewHandlerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcoil3/compose/AsyncImagePreviewHandler;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    const v0, 0x7858d845

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;)Lcoil3/size/SizeResolver;
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->d:Landroidx/compose/ui/layout/FixedScale;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 20
    .line 21
    if-ne v1, v0, :cond_2

    .line 22
    .line 23
    :cond_0
    if-eqz p0, :cond_1

    .line 24
    .line 25
    sget-object p0, Lcoil3/size/SizeResolver;->a:Lcoil3/size/RealSizeResolver;

    .line 26
    .line 27
    :goto_0
    move-object v1, p0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance p0, Lcoil3/compose/ConstraintsSizeResolver;

    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-wide v0, Lcoil3/compose/internal/UtilsKt;->a:J

    .line 35
    .line 36
    iput-wide v0, p0, Lcoil3/compose/ConstraintsSizeResolver;->b:J

    .line 37
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcoil3/compose/ConstraintsSizeResolver;->c:Ljava/util/ArrayList;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :goto_1
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    check-cast v1, Lcoil3/size/SizeResolver;

    .line 50
    .line 51
    return-object v1
.end method

.method public static final d(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Lcoil3/request/ImageRequest;
    .locals 4

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x4ea817fa

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 7
    .line 8
    .line 9
    instance-of v0, p0, Lcoil3/request/ImageRequest;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const v0, 0x5b3f4fec

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 18
    .line 19
    .line 20
    check-cast p0, Lcoil3/request/ImageRequest;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    const v0, 0x5b3fe93a

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    or-int/2addr v2, v3

    .line 52
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 59
    .line 60
    if-ne v3, v2, :cond_2

    .line 61
    .line 62
    :cond_1
    new-instance v2, Lcoil3/request/ImageRequest$Builder;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    iput-object p0, v2, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    check-cast v3, Lcoil3/request/ImageRequest;

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 82
    .line 83
    .line 84
    return-object v3
.end method

.method public static final e(J)J
    .locals 6

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v1, p0, v0

    .line 4
    .line 5
    long-to-int v1, v1

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lkotlin/math/MathKt;->b(F)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-wide v2, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long/2addr p0, v2

    .line 20
    long-to-int p0, p0

    .line 21
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-static {p0}, Lkotlin/math/MathKt;->b(F)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    int-to-long v4, v1

    .line 30
    shl-long v0, v4, v0

    .line 31
    .line 32
    int-to-long p0, p0

    .line 33
    and-long/2addr p0, v2

    .line 34
    or-long/2addr p0, v0

    .line 35
    return-wide p0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "If you wish to display this "

    .line 2
    .line 3
    const-string v1, ", use androidx.compose.foundation.Image."

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "Unsupported type: "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, ". "

    .line 22
    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method public static final g(Lcoil3/request/ImageRequest;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lcoil3/request/ImageRequest$Builder;

    .line 4
    .line 5
    if-nez v1, :cond_5

    .line 6
    .line 7
    instance-of v1, v0, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_4

    .line 11
    .line 12
    instance-of v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 13
    .line 14
    if-nez v1, :cond_3

    .line 15
    .line 16
    instance-of v0, v0, Landroidx/compose/ui/graphics/painter/Painter;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcoil3/request/ImageRequest;->c:Lcoil3/target/Target;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lcoil3/request/ImageRequests_androidKt;->e:Lcoil3/Extras$Key;

    .line 25
    .line 26
    invoke-static {p0, v0}, Lcoil3/ExtrasKt;->a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroidx/lifecycle/Lifecycle;

    .line 31
    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    const-string p0, "request.lifecycle must be null."

    .line 36
    .line 37
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string p0, "request.target must be null."

    .line 42
    .line 43
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    const-string p0, "Painter"

    .line 48
    .line 49
    invoke-static {p0}, Lcoil3/compose/internal/UtilsKt;->f(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v2

    .line 53
    :cond_3
    const-string p0, "ImageVector"

    .line 54
    .line 55
    invoke-static {p0}, Lcoil3/compose/internal/UtilsKt;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v2

    .line 59
    :cond_4
    const-string p0, "ImageBitmap"

    .line 60
    .line 61
    invoke-static {p0}, Lcoil3/compose/internal/UtilsKt;->f(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v2

    .line 65
    :cond_5
    const-string p0, "Unsupported type: ImageRequest.Builder. Did you forget to call ImageRequest.Builder.build()?"

    .line 66
    .line 67
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
