.class final Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28$textClassificationItem$5$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/graphics/Color;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28$textClassificationItem$5$1;->j:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/ui/graphics/Color;

    .line 2
    .line 3
    iget-wide v0, p1, Landroidx/compose/ui/graphics/Color;->a:J

    .line 4
    .line 5
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 6
    .line 7
    check-cast p3, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    and-int/lit8 p3, p1, 0x11

    .line 14
    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq p3, v0, :cond_0

    .line 19
    .line 20
    move p3, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p3, 0x0

    .line 23
    :goto_0
    and-int/2addr p1, v1

    .line 24
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    invoke-virtual {p2, p1, p3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28$textClassificationItem$5$1;->j:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    const/16 p1, 0x30

    .line 35
    .line 36
    sget-object p3, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->a:Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;

    .line 37
    .line 38
    invoke-virtual {p3, p0, p2, p1}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->a(Landroid/graphics/drawable/Drawable;Landroidx/compose/runtime/Composer;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 43
    .line 44
    .line 45
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method
