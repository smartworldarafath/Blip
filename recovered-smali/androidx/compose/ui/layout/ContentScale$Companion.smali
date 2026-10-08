.class public final Landroidx/compose/ui/layout/ContentScale$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/ContentScale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

.field public static final b:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

.field public static final c:Landroidx/compose/ui/layout/ContentScale$Companion$Inside$1;

.field public static final d:Landroidx/compose/ui/layout/FixedScale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->a:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    .line 14
    .line 15
    new-instance v0, Landroidx/compose/ui/layout/ContentScale$Companion$Inside$1;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->c:Landroidx/compose/ui/layout/ContentScale$Companion$Inside$1;

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/ui/layout/FixedScale;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroidx/compose/ui/layout/ContentScale$Companion;->d:Landroidx/compose/ui/layout/FixedScale;

    .line 28
    .line 29
    return-void
.end method
