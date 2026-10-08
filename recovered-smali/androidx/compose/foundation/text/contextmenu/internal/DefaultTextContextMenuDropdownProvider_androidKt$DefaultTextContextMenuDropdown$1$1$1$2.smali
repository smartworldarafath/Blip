.class final Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1$1$1$2;
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
.field public final synthetic j:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1$1$1$2;->j:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

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
    and-int/lit8 p3, p1, 0x6

    .line 14
    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    move-object p3, p2

    .line 18
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 19
    .line 20
    invoke-virtual {p3, v0, v1}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    const/4 p3, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p3, 0x2

    .line 29
    :goto_0
    or-int/2addr p1, p3

    .line 30
    :cond_1
    and-int/lit8 p3, p1, 0x13

    .line 31
    .line 32
    const/16 v2, 0x12

    .line 33
    .line 34
    if-eq p3, v2, :cond_2

    .line 35
    .line 36
    const/4 p3, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 p3, 0x0

    .line 39
    :goto_1
    and-int/lit8 v2, p1, 0x1

    .line 40
    .line 41
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 42
    .line 43
    invoke-virtual {p2, v2, p3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-eqz p3, :cond_3

    .line 48
    .line 49
    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt$DefaultTextContextMenuDropdown$1$1$1$2;->j:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 50
    .line 51
    iget p0, p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->c:I

    .line 52
    .line 53
    shl-int/lit8 p1, p1, 0x3

    .line 54
    .line 55
    and-int/lit8 p1, p1, 0x70

    .line 56
    .line 57
    invoke-static {p0, p1, v0, v1, p2}, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->b(IIJLandroidx/compose/runtime/Composer;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 62
    .line 63
    .line 64
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0
.end method
