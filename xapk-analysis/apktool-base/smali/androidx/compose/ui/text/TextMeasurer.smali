.class public final Landroidx/compose/ui/text/TextMeasurer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final b:Landroidx/compose/ui/unit/Density;

.field public final c:Landroidx/compose/ui/unit/LayoutDirection;

.field public final d:Landroidx/compose/ui/text/TextLayoutCache;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/text/TextMeasurer;->a:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/text/TextMeasurer;->b:Landroidx/compose/ui/unit/Density;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/ui/text/TextMeasurer;->c:Landroidx/compose/ui/unit/LayoutDirection;

    .line 9
    .line 10
    new-instance p1, Landroidx/compose/ui/text/TextLayoutCache;

    .line 11
    .line 12
    invoke-direct {p1}, Landroidx/compose/ui/text/TextLayoutCache;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/compose/ui/text/TextMeasurer;->d:Landroidx/compose/ui/text/TextLayoutCache;

    .line 16
    .line 17
    return-void
.end method
