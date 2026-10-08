.class public abstract Landroidx/compose/foundation/shape/CornerSizeKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/foundation/shape/CornerSizeKt$ZeroCornerSize$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/shape/CornerSizeKt$ZeroCornerSize$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/shape/CornerSizeKt;->a:Landroidx/compose/foundation/shape/CornerSizeKt$ZeroCornerSize$1;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(F)Landroidx/compose/foundation/shape/CornerSize;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/shape/DpCornerSize;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/foundation/shape/DpCornerSize;-><init>(F)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
