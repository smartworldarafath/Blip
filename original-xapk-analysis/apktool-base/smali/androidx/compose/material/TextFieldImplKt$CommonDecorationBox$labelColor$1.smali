.class final Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/material/InputPhase;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/graphics/Color;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Landroidx/compose/material/TextFieldColors;

.field public final synthetic k:Z

.field public final synthetic l:Landroidx/compose/foundation/interaction/InteractionSource;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->j:Landroidx/compose/material/TextFieldColors;

    .line 5
    .line 6
    iput-boolean p3, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->k:Z

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->l:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/material/InputPhase;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const p1, 0x54d35da5

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Landroidx/compose/material/InputPhase;->j:Landroidx/compose/material/InputPhase;

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->j:Landroidx/compose/material/TextFieldColors;

    .line 21
    .line 22
    check-cast p1, Landroidx/compose/material/DefaultTextFieldColors;

    .line 23
    .line 24
    const p3, 0x2b568ab0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 28
    .line 29
    .line 30
    iget-object p3, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->l:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {p3, p2, v0}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    iget-boolean p0, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->k:Z

    .line 38
    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    iget-wide p0, p1, Landroidx/compose/material/DefaultTextFieldColors;->r:J

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    iget-wide p0, p1, Landroidx/compose/material/DefaultTextFieldColors;->p:J

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-wide p0, p1, Landroidx/compose/material/DefaultTextFieldColors;->q:J

    .line 60
    .line 61
    :goto_0
    new-instance p3, Landroidx/compose/ui/graphics/Color;

    .line 62
    .line 63
    invoke-direct {p3, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 64
    .line 65
    .line 66
    invoke-static {p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 78
    .line 79
    iget-wide p0, p0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 82
    .line 83
    .line 84
    new-instance p2, Landroidx/compose/ui/graphics/Color;

    .line 85
    .line 86
    invoke-direct {p2, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 87
    .line 88
    .line 89
    return-object p2
.end method
