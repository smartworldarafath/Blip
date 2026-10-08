.class public final Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/text/style/TextForegroundStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/style/TextForegroundStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unspecified"
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->a:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    .line 1
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 2
    .line 3
    return p0
.end method

.method public final b()J
    .locals 2

    .line 1
    sget p0, Landroidx/compose/ui/graphics/Color;->i:I

    .line 2
    .line 3
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->h:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public final d()Landroidx/compose/ui/graphics/Brush;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
