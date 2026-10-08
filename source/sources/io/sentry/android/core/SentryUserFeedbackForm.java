package io.sentry.android.core;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.HandlerThread;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import io.sentry.IScopes;
import io.sentry.Sentry;
import io.sentry.SentryFeedbackOptions;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.protocol.Feedback;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.User;
import java.lang.ref.WeakReference;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SentryUserFeedbackForm extends AlertDialog {
    public static final /* synthetic */ int p = 0;
    public boolean j;
    public SentryId k;
    public DialogInterface.OnDismissListener l;
    public final SentryFeedbackOptions m;
    public SentryShakeDetector n;
    public Application.ActivityLifecycleCallbacks o;

    /* JADX WARN: Type inference failed for: r1v0, types: [io.sentry.SentryFeedbackOptions, java.lang.Object] */
    public SentryUserFeedbackForm(Context context) {
        super(context, 0);
        Activity activity;
        this.j = false;
        SentryFeedbackOptions feedbackOptions = Sentry.b().j().getFeedbackOptions();
        ?? obj = new Object();
        obj.a = false;
        obj.b = true;
        obj.c = false;
        obj.d = true;
        obj.e = true;
        obj.f = true;
        obj.g = false;
        obj.h = "Report a Bug";
        obj.i = "Send Bug Report";
        obj.j = "Cancel";
        obj.k = "Name";
        obj.l = "Your Name";
        obj.m = "Email";
        obj.n = "your.email@example.org";
        obj.o = " (Required)";
        obj.p = "Description";
        obj.q = "What's the bug? What did you expect?";
        obj.r = "Thank you for your report!";
        obj.a = feedbackOptions.a;
        obj.b = feedbackOptions.b;
        obj.c = feedbackOptions.c;
        obj.d = feedbackOptions.d;
        obj.e = feedbackOptions.e;
        obj.f = feedbackOptions.f;
        obj.g = feedbackOptions.g;
        obj.h = feedbackOptions.h;
        obj.i = feedbackOptions.i;
        obj.j = feedbackOptions.j;
        obj.k = feedbackOptions.k;
        obj.l = feedbackOptions.l;
        obj.m = feedbackOptions.m;
        obj.n = feedbackOptions.n;
        obj.o = feedbackOptions.o;
        obj.p = feedbackOptions.p;
        obj.q = feedbackOptions.q;
        obj.r = feedbackOptions.r;
        obj.s = feedbackOptions.s;
        this.m = obj;
        SentryIntegrationPackageStorage.d().a("UserFeedbackWidget");
        SentryFeedbackOptions feedbackOptions2 = Sentry.b().j().getFeedbackOptions();
        if (obj.g && !feedbackOptions2.g) {
            while (true) {
                if (context instanceof ContextWrapper) {
                    if (context instanceof Activity) {
                        activity = (Activity) context;
                        break;
                    }
                    context = ((ContextWrapper) context).getBaseContext();
                } else {
                    activity = null;
                    break;
                }
            }
            if (activity != null) {
                this.n = new SentryShakeDetector(Sentry.b().j().getLogger());
                WeakReference weakReference = new WeakReference(activity);
                this.n.b(activity, new e(this, weakReference));
                Application application = activity.getApplication();
                ShakeLifecycleCallbacks shakeLifecycleCallbacks = new ShakeLifecycleCallbacks(weakReference);
                this.o = shakeLifecycleCallbacks;
                application.registerActivityLifecycleCallbacks(shakeLifecycleCallbacks);
            }
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        User I;
        super.onCreate(bundle);
        setContentView(R.layout.sentry_dialog_user_feedback);
        Window window = getWindow();
        if (window != null) {
            window.clearFlags(131072);
        }
        setCancelable(this.j);
        TextView textView = (TextView) findViewById(R.id.sentry_dialog_user_feedback_title);
        ImageView imageView = (ImageView) findViewById(R.id.sentry_dialog_user_feedback_logo);
        final TextView textView2 = (TextView) findViewById(R.id.sentry_dialog_user_feedback_txt_name);
        final EditText editText = (EditText) findViewById(R.id.sentry_dialog_user_feedback_edt_name);
        final TextView textView3 = (TextView) findViewById(R.id.sentry_dialog_user_feedback_txt_email);
        final EditText editText2 = (EditText) findViewById(R.id.sentry_dialog_user_feedback_edt_email);
        final TextView textView4 = (TextView) findViewById(R.id.sentry_dialog_user_feedback_txt_description);
        final EditText editText3 = (EditText) findViewById(R.id.sentry_dialog_user_feedback_edt_description);
        Button button = (Button) findViewById(R.id.sentry_dialog_user_feedback_btn_send);
        Button button2 = (Button) findViewById(R.id.sentry_dialog_user_feedback_btn_cancel);
        final SentryFeedbackOptions sentryFeedbackOptions = this.m;
        boolean z = sentryFeedbackOptions.f;
        CharSequence charSequence = sentryFeedbackOptions.o;
        if (z) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        if (!sentryFeedbackOptions.b && !sentryFeedbackOptions.a) {
            textView2.setVisibility(8);
            editText.setVisibility(8);
        } else {
            textView2.setVisibility(0);
            editText.setVisibility(0);
            textView2.setText(sentryFeedbackOptions.k);
            editText.setHint(sentryFeedbackOptions.l);
            if (sentryFeedbackOptions.a) {
                textView2.append(charSequence);
            }
        }
        if (!sentryFeedbackOptions.d && !sentryFeedbackOptions.c) {
            textView3.setVisibility(8);
            editText2.setVisibility(8);
        } else {
            textView3.setVisibility(0);
            editText2.setVisibility(0);
            textView3.setText(sentryFeedbackOptions.m);
            editText2.setHint(sentryFeedbackOptions.n);
            if (sentryFeedbackOptions.c) {
                textView3.append(charSequence);
            }
        }
        if (sentryFeedbackOptions.e && (I = Sentry.b().s().I()) != null) {
            editText.setText(I.l);
            editText2.setText(I.j);
        }
        textView4.setText(sentryFeedbackOptions.p);
        textView4.append(charSequence);
        editText3.setHint(sentryFeedbackOptions.q);
        textView.setText(sentryFeedbackOptions.h);
        button.setText(sentryFeedbackOptions.i);
        button.setOnClickListener(new View.OnClickListener() { // from class: io.sentry.android.core.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i = SentryUserFeedbackForm.p;
                EditText editText4 = editText;
                String trim = editText4.getText().toString().trim();
                EditText editText5 = editText2;
                String trim2 = editText5.getText().toString().trim();
                EditText editText6 = editText3;
                String trim3 = editText6.getText().toString().trim();
                boolean isEmpty = trim.isEmpty();
                SentryFeedbackOptions sentryFeedbackOptions2 = sentryFeedbackOptions;
                if (isEmpty && sentryFeedbackOptions2.a) {
                    editText4.setError(textView2.getText());
                    return;
                }
                if (trim2.isEmpty() && sentryFeedbackOptions2.c) {
                    editText5.setError(textView3.getText());
                    return;
                }
                if (trim3.isEmpty()) {
                    editText6.setError(textView4.getText());
                    return;
                }
                Feedback feedback = new Feedback(trim3);
                feedback.l = trim;
                feedback.k = trim2;
                SentryUserFeedbackForm sentryUserFeedbackForm = SentryUserFeedbackForm.this;
                SentryId sentryId = sentryUserFeedbackForm.k;
                if (sentryId != null) {
                    feedback.n = sentryId;
                }
                if (!Sentry.b().t().a(feedback).equals(SentryId.k)) {
                    Toast.makeText(sentryUserFeedbackForm.getContext(), sentryFeedbackOptions2.r, 0).show();
                } else {
                    sentryFeedbackOptions2.getClass();
                }
                sentryUserFeedbackForm.cancel();
            }
        });
        button2.setText(sentryFeedbackOptions.j);
        button2.setOnClickListener(new View.OnClickListener() { // from class: io.sentry.android.core.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i = SentryUserFeedbackForm.p;
                SentryUserFeedbackForm.this.cancel();
            }
        });
        setOnDismissListener(this.l);
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        EditText editText = (EditText) findViewById(R.id.sentry_dialog_user_feedback_edt_description);
        editText.getText().clear();
        editText.setError(null);
        SentryOptions j = Sentry.b().j();
        j.getFeedbackOptions().getClass();
        j.getReplayController().n(Boolean.FALSE);
        this.k = j.getReplayController().h();
    }

    @Override // android.app.Dialog
    public final void setCancelable(boolean z) {
        super.setCancelable(z);
        this.j = z;
    }

    @Override // android.app.Dialog
    public final void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.l = onDismissListener;
        final Runnable runnable = Sentry.b().j().getFeedbackOptions().s;
        if (runnable != null) {
            super.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: io.sentry.android.core.p
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    int i = SentryUserFeedbackForm.p;
                    runnable.run();
                    SentryUserFeedbackForm sentryUserFeedbackForm = SentryUserFeedbackForm.this;
                    sentryUserFeedbackForm.k = null;
                    DialogInterface.OnDismissListener onDismissListener2 = sentryUserFeedbackForm.l;
                    if (onDismissListener2 != null) {
                        onDismissListener2.onDismiss(dialogInterface);
                    }
                }
            });
        } else {
            super.setOnDismissListener(this.l);
        }
    }

    @Override // android.app.Dialog
    public final void show() {
        IScopes b = Sentry.b();
        SentryOptions j = b.j();
        if (b.isEnabled() && j.isEnabled()) {
            super.show();
        } else {
            j.getLogger().c(SentryLevel.WARNING, "Sentry is disabled. Feedback dialog won't be shown.", new Object[0]);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class ShakeLifecycleCallbacks implements Application.ActivityLifecycleCallbacks {
        public final WeakReference j;

        public ShakeLifecycleCallbacks(WeakReference weakReference) {
            this.j = weakReference;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            Activity activity2;
            if (activity == this.j.get()) {
                SentryUserFeedbackForm sentryUserFeedbackForm = SentryUserFeedbackForm.this;
                SentryShakeDetector sentryShakeDetector = sentryUserFeedbackForm.n;
                if (sentryShakeDetector != null) {
                    sentryShakeDetector.c();
                    HandlerThread handlerThread = sentryShakeDetector.c;
                    if (handlerThread != null) {
                        handlerThread.quitSafely();
                        sentryShakeDetector.c = null;
                        sentryShakeDetector.d = null;
                    }
                    sentryUserFeedbackForm.n = null;
                }
                if (sentryUserFeedbackForm.o != null) {
                    Context context = sentryUserFeedbackForm.getContext();
                    while (true) {
                        if (context instanceof ContextWrapper) {
                            if (context instanceof Activity) {
                                activity2 = (Activity) context;
                                break;
                            }
                            context = ((ContextWrapper) context).getBaseContext();
                        } else {
                            activity2 = null;
                            break;
                        }
                    }
                    if (activity2 != null) {
                        activity2.getApplication().unregisterActivityLifecycleCallbacks(sentryUserFeedbackForm.o);
                    }
                    sentryUserFeedbackForm.o = null;
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            SentryShakeDetector sentryShakeDetector;
            if (activity == this.j.get() && (sentryShakeDetector = SentryUserFeedbackForm.this.n) != null) {
                sentryShakeDetector.c();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            SentryUserFeedbackForm sentryUserFeedbackForm;
            SentryShakeDetector sentryShakeDetector;
            WeakReference weakReference = this.j;
            if (activity == weakReference.get() && (sentryShakeDetector = (sentryUserFeedbackForm = SentryUserFeedbackForm.this).n) != null) {
                sentryShakeDetector.b(activity, new e(sentryUserFeedbackForm, weakReference));
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }
    }
}
