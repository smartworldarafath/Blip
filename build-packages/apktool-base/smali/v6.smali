.class public final synthetic Lv6;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/text/input/TextFieldValue;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Landroidx/compose/ui/Modifier;

.field public final synthetic m:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic n:Landroidx/compose/ui/text/input/VisualTransformation;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic q:Landroidx/compose/ui/graphics/SolidColor;

.field public final synthetic r:Z

.field public final synthetic s:I

.field public final synthetic t:I

.field public final synthetic u:Landroidx/compose/ui/text/input/ImeOptions;

.field public final synthetic v:Landroidx/compose/foundation/text/KeyboardActions;

.field public final synthetic w:Z

.field public final synthetic x:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic y:I

.field public final synthetic z:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/SolidColor;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv6;->j:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 5
    .line 6
    iput-object p2, p0, Lv6;->k:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    iput-object p3, p0, Lv6;->l:Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    iput-object p4, p0, Lv6;->m:Landroidx/compose/ui/text/TextStyle;

    .line 11
    .line 12
    iput-object p5, p0, Lv6;->n:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 13
    .line 14
    iput-object p6, p0, Lv6;->o:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iput-object p7, p0, Lv6;->p:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 17
    .line 18
    iput-object p8, p0, Lv6;->q:Landroidx/compose/ui/graphics/SolidColor;

    .line 19
    .line 20
    iput-boolean p9, p0, Lv6;->r:Z

    .line 21
    .line 22
    iput p10, p0, Lv6;->s:I

    .line 23
    .line 24
    iput p11, p0, Lv6;->t:I

    .line 25
    .line 26
    iput-object p12, p0, Lv6;->u:Landroidx/compose/ui/text/input/ImeOptions;

    .line 27
    .line 28
    iput-object p13, p0, Lv6;->v:Landroidx/compose/foundation/text/KeyboardActions;

    .line 29
    .line 30
    iput-boolean p14, p0, Lv6;->w:Z

    .line 31
    .line 32
    iput-object p15, p0, Lv6;->x:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 33
    .line 34
    move/from16 p1, p16

    .line 35
    .line 36
    iput p1, p0, Lv6;->y:I

    .line 37
    .line 38
    move/from16 p1, p17

    .line 39
    .line 40
    iput p1, p0, Lv6;->z:I

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    check-cast v15, Landroidx/compose/runtime/Composer;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lv6;->y:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 19
    .line 20
    .line 21
    move-result v16

    .line 22
    iget v1, v0, Lv6;->z:I

    .line 23
    .line 24
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 25
    .line 26
    .line 27
    move-result v17

    .line 28
    iget-object v1, v0, Lv6;->j:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 29
    .line 30
    move-object v2, v1

    .line 31
    iget-object v1, v0, Lv6;->k:Lkotlin/jvm/functions/Function1;

    .line 32
    .line 33
    move-object v3, v2

    .line 34
    iget-object v2, v0, Lv6;->l:Landroidx/compose/ui/Modifier;

    .line 35
    .line 36
    move-object v4, v3

    .line 37
    iget-object v3, v0, Lv6;->m:Landroidx/compose/ui/text/TextStyle;

    .line 38
    .line 39
    move-object v5, v4

    .line 40
    iget-object v4, v0, Lv6;->n:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 41
    .line 42
    move-object v6, v5

    .line 43
    iget-object v5, v0, Lv6;->o:Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    move-object v7, v6

    .line 46
    iget-object v6, v0, Lv6;->p:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 47
    .line 48
    move-object v8, v7

    .line 49
    iget-object v7, v0, Lv6;->q:Landroidx/compose/ui/graphics/SolidColor;

    .line 50
    .line 51
    move-object v9, v8

    .line 52
    iget-boolean v8, v0, Lv6;->r:Z

    .line 53
    .line 54
    move-object v10, v9

    .line 55
    iget v9, v0, Lv6;->s:I

    .line 56
    .line 57
    move-object v11, v10

    .line 58
    iget v10, v0, Lv6;->t:I

    .line 59
    .line 60
    move-object v12, v11

    .line 61
    iget-object v11, v0, Lv6;->u:Landroidx/compose/ui/text/input/ImeOptions;

    .line 62
    .line 63
    move-object v13, v12

    .line 64
    iget-object v12, v0, Lv6;->v:Landroidx/compose/foundation/text/KeyboardActions;

    .line 65
    .line 66
    move-object v14, v13

    .line 67
    iget-boolean v13, v0, Lv6;->w:Z

    .line 68
    .line 69
    iget-object v0, v0, Lv6;->x:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 70
    .line 71
    move-object/from16 v18, v14

    .line 72
    .line 73
    move-object v14, v0

    .line 74
    move-object/from16 v0, v18

    .line 75
    .line 76
    invoke-static/range {v0 .. v17}, Landroidx/compose/foundation/text/CoreTextFieldKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/SolidColor;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object v0
.end method
