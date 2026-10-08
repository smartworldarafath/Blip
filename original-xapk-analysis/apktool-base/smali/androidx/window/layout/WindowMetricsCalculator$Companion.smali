.class public final Landroidx/window/layout/WindowMetricsCalculator$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/WindowMetricsCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic a:Landroidx/window/layout/WindowMetricsCalculator$Companion;

.field public static final b:Landroidx/window/layout/WindowMetricsCalculatorCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/window/layout/WindowMetricsCalculator$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/window/layout/WindowMetricsCalculator$Companion;->a:Landroidx/window/layout/WindowMetricsCalculator$Companion;

    .line 7
    .line 8
    new-instance v0, Landroidx/window/layout/WindowMetricsCalculatorCompat;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/window/layout/WindowMetricsCalculatorCompat;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/window/layout/WindowMetricsCalculator$Companion;->b:Landroidx/window/layout/WindowMetricsCalculatorCompat;

    .line 14
    .line 15
    return-void
.end method
