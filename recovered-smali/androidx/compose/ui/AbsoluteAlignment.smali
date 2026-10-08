.class public abstract Landroidx/compose/ui/AbsoluteAlignment;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/ui/BiasAbsoluteAlignment;

.field public static final b:Landroidx/compose/ui/BiasAbsoluteAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment;

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/compose/ui/BiasAbsoluteAlignment;-><init>(F)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->a:Landroidx/compose/ui/BiasAbsoluteAlignment;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/ui/BiasAbsoluteAlignment;

    .line 11
    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroidx/compose/ui/BiasAbsoluteAlignment;-><init>(F)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/compose/ui/AbsoluteAlignment;->b:Landroidx/compose/ui/BiasAbsoluteAlignment;

    .line 18
    .line 19
    return-void
.end method
