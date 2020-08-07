package org.microg.gms.ui;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.os.Bundle;

import androidx.annotation.Nullable;
import androidx.navigation.fragment.NavHostFragment;
import androidx.preference.Preference;
import androidx.preference.SwitchPreferenceCompat;

import com.google.android.gms.cast.media.CastMediaRouteProviderService;
import com.mgoogle.android.gms.R;

import org.microg.gms.checkin.CheckinPrefs;
import org.microg.gms.gcm.GcmDatabase;
import org.microg.gms.gcm.GcmPrefs;
import org.microg.tools.ui.ResourceSettingsFragment;

public class SettingsFragment extends ResourceSettingsFragment
{

    public static final String PREF_ABOUT = "pref_about";
    public static final String PREF_GCM = "pref_gcm";
    public static final String PREF_SNET = "pref_snet";
    public static final String PREF_UNIFIEDNLP = "pref_unifiednlp";
    public static final String PREF_CHECKIN = "pref_checkin";
    public static final String PREF_CAST_ENABLED = "pref_cast_enabled";

    public SettingsFragment()
    {
        preferencesResource = R.xml.preferences_start;
    }

    @Override
    public void onCreatePreferences(@Nullable Bundle savedInstanceState, String rootKey)
    {
        super.onCreatePreferences(savedInstanceState, rootKey);
        updateDetails();
    }

    @Override
    public void onResume()
    {
        super.onResume();
        updateDetails();
    }

    private void updateDetails()
    {
        findPreference(PREF_ABOUT).setSummary(getString(R.string.about_version_str, AboutFragment.getSelfVersion(getContext())));
        findPreference(PREF_ABOUT).setOnPreferenceClickListener(preference -> {
            NavHostFragment.findNavController(SettingsFragment.this).navigate(R.id.openAbout);
            return true;
        });
        findPreference(PREF_CAST_ENABLED).setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener()
        {
            @Override
            public boolean onPreferenceChange(Preference preference, Object newValue)
            {
                if ((boolean) newValue)
                    getContext().getPackageManager().setComponentEnabledSetting(
                            new ComponentName(getContext().getApplicationContext(), CastMediaRouteProviderService.class),
                            PackageManager.COMPONENT_ENABLED_STATE_ENABLED,
                            PackageManager.DONT_KILL_APP);
                else
                    getContext().getPackageManager().setComponentEnabledSetting(
                            new ComponentName(getContext().getApplicationContext(), CastMediaRouteProviderService.class),
                            PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
                            PackageManager.DONT_KILL_APP);
                return true;
            }
        });
        if (GcmPrefs.get(getContext()).isEnabled())
        {
            GcmDatabase database = new GcmDatabase(getContext());
            int regCount = database.getRegistrationList().size();
            database.close();
            findPreference(PREF_GCM).setSummary(getString(R.string.service_status_enabled_short) + " - " + getResources().getQuantityString(R.plurals.gcm_registered_apps_counter, regCount, regCount));
        } else
        {
            findPreference(PREF_GCM).setSummary(R.string.service_status_disabled_short);
        }
        findPreference(PREF_GCM).setOnPreferenceClickListener(preference -> {
            NavHostFragment.findNavController(SettingsFragment.this).navigate(R.id.openGcmSettings);
            return true;
        });

        boolean checkinEnabled = CheckinPrefs.get(getContext()).isEnabled();
        findPreference(PREF_CHECKIN).setSummary(checkinEnabled ? R.string.service_status_enabled_short : R.string.service_status_disabled_short);
        findPreference(PREF_CHECKIN).setOnPreferenceClickListener(preference -> {
            NavHostFragment.findNavController(SettingsFragment.this).navigate(R.id.openCheckinSettings);
            return true;
        });
    }
}
