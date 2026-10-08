.class final Landroidx/compose/material/ContentColorKt$LocalContentColor$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material/ContentColorKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/ui/graphics/Color;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Landroidx/compose/material/ContentColorKt$LocalContentColor$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/ContentColorKt$LocalContentColor$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/ContentColorKt$LocalContentColor$1;->j:Landroidx/compose/material/ContentColorKt$LocalContentColor$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->b:J

    .line 2
    .line 3
    new-instance p0, Landroidx/compose/ui/graphics/Color;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
