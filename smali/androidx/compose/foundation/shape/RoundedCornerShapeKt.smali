.class public abstract Landroidx/compose/foundation/shape/RoundedCornerShapeKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/foundation/shape/RoundedCornerShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x32

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(I)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 8
    .line 9
    return-void
.end method

.method public static final a(I)Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/shape/PercentCornerSize;

    .line 2
    .line 3
    int-to-float p0, p0

    .line 4
    invoke-direct {v0, p0}, Landroidx/compose/foundation/shape/PercentCornerSize;-><init>(F)V

    .line 5
    .line 6
    .line 7
    new-instance p0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 8
    .line 9
    invoke-direct {p0, v0, v0, v0, v0}, Landroidx/compose/foundation/shape/CornerBasedShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public static final b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/shape/DpCornerSize;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/foundation/shape/DpCornerSize;-><init>(F)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 7
    .line 8
    invoke-direct {p0, v0, v0, v0, v0}, Landroidx/compose/foundation/shape/CornerBasedShape;-><init>(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
